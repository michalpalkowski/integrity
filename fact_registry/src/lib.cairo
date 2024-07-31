mod verifier;

use cairo_verifier::{StarkProofWithSerde, CairoVersion};
use starknet::ContractAddress;

#[derive(Drop, Copy, Serde)]
struct VerifierSettings {
    layout: felt252,
    hasher: felt252,
    cairo_version: CairoVersion,
    security_bits: felt252,
    version: felt252,
}

#[starknet::interface]
trait IFactRegistry<TContractState> {
    fn verify_and_register_fact(
        ref self: TContractState, stark_proof: StarkProofWithSerde, settings: VerifierSettings
    );
    fn is_valid(self: @TContractState, fact: felt252) -> bool;
}

#[starknet::contract]
mod FactRegistry {
    use cairo_verifier::{StarkProofWithSerde, CairoVersion};
    use starknet::ContractAddress;
    use core::{
        poseidon::{Poseidon, PoseidonImpl, HashStateImpl}, keccak::keccak_u256s_be_inputs,
        starknet::event::EventEmitter
    };
    use fact_registry::{verifier::{ICairoVerifierDispatcher, ICairoVerifierDispatcherTrait, StarkProof}, IFactRegistry};
    use super::VerifierSettings;

    #[storage]
    struct Storage {
        verifiers: LegacyMap<felt252, ContractAddress>,
        facts: LegacyMap<felt252, bool>,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        // #[flat]
        // CairoVerifierEvent: CairoVerifier::Event,
        FactRegistered: FactRegistered,
    }

    #[derive(Drop, starknet::Event)]
    struct FactRegistered {
        #[key]
        fact: felt252,
    }

    #[abi(embed_v0)]
    impl FactRegistryImpl of IFactRegistry<ContractState> {
        fn verify_and_register_fact(
            ref self: ContractState, stark_proof: StarkProofWithSerde, settings: VerifierSettings,
        ) {
            let verifier_address = self.verifiers.read(self._hash_settings(settings));
            let (program_hash, output_hash) = ICairoVerifierDispatcher {
                contract_address: verifier_address
            }.verify_proof(stark_proof.into(), settings.cairo_version);
            self._register_fact(program_hash, output_hash);
        }

        fn is_valid(self: @ContractState, fact: felt252) -> bool {
            self.facts.read(fact)
        }
    }

    #[generate_trait]
    impl InternalFactRegistry of InternalFactRegistryTrait {
        fn _register_fact(ref self: ContractState, program_hash: felt252, output_hash: felt252,) {
            let fact = PoseidonImpl::new().update(program_hash).update(output_hash).finalize();
            self.emit(Event::FactRegistered(FactRegistered { fact }));
            self.facts.write(fact, true);
        }

        fn _hash_settings(self: @ContractState, settings: VerifierSettings) -> felt252 {
            PoseidonImpl::new().update(settings.layout).update(settings.hasher)
                .update(settings.cairo_version.into()).update(settings.security_bits)
                .update(settings.version).finalize()
        }
    }
}
