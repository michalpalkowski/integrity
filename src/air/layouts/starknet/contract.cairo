use cairo_verifier::air::layouts::starknet::global_values::GlobalValues;

#[starknet::interface]
trait IStarknetLayoutContract1<ContractState> {
    fn eval_composition_polynomial_inner(
        self: @ContractState,
        mask_values: Span<felt252>,
        constraint_coefficients: Span<felt252>,
        point: felt252,
        trace_generator: felt252,
        global_values: GlobalValues
    ) -> felt252;
}

#[starknet::interface]
trait IStarknetLayoutContract1part2<ContractState> {
    fn eval_composition_polynomial_inner(
        self: @ContractState,
        mask_values: Span<felt252>,
        constraint_coefficients: Span<felt252>,
        point: felt252,
        trace_generator: felt252,
        global_values: GlobalValues
    ) -> felt252;
}

#[starknet::interface]
trait IStarknetLayoutContract2<ContractState> {
    fn eval_oods_polynomial_inner(
        self: @ContractState,
        column_values: Span<felt252>,
        oods_values: Span<felt252>,
        constraint_coefficients: Span<felt252>,
        point: felt252,
        oods_point: felt252,
        trace_generator: felt252,
    ) -> felt252;
}

#[starknet::contract]
mod StarknetLayoutContract1 {
    use super::{IStarknetLayoutContract1, IStarknetLayoutContract1part2Dispatcher, IStarknetLayoutContract1part2DispatcherTrait};
    use cairo_verifier::air::layouts::starknet::{
        global_values::GlobalValues,
        autogenerated::eval_composition_polynomial_inner_part_1,
    };
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        part_2_address: ContractAddress,
    }

    #[constructor]
    fn constructor(ref self: ContractState, part_2_address: ContractAddress) {
        self.part_2_address.write(part_2_address);
    }

    #[abi(embed_v0)]
    impl StarknetLayoutContract1 of IStarknetLayoutContract1<ContractState> {
        fn eval_composition_polynomial_inner(
            self: @ContractState,
            mask_values: Span<felt252>,
            constraint_coefficients: Span<felt252>,
            point: felt252,
            trace_generator: felt252,
            global_values: GlobalValues
        ) -> felt252 {
            let part_1_res = eval_composition_polynomial_inner_part_1(
                mask_values,
                constraint_coefficients.slice(0,99),
                point,
                trace_generator,
                global_values
            );
            let part_2_res = IStarknetLayoutContract1part2Dispatcher {
                contract_address: self.part_2_address.read(),
            }.eval_composition_polynomial_inner(
                mask_values,
                constraint_coefficients.slice(99, 99),
                point,
                trace_generator,
                global_values
            );

            part_1_res + part_2_res
        }
    }
}

#[starknet::contract]
mod StarknetLayoutContract1part2 {
    use super::IStarknetLayoutContract1part2;
    use cairo_verifier::air::layouts::starknet::{
        global_values::GlobalValues,
        autogenerated::eval_composition_polynomial_inner_part_2,
    };

    #[storage]
    struct Storage {}

    #[abi(embed_v0)]
    impl StarknetLayoutContract1part2 of IStarknetLayoutContract1part2<ContractState> {
        fn eval_composition_polynomial_inner(
            self: @ContractState,
            mask_values: Span<felt252>,
            constraint_coefficients: Span<felt252>,
            point: felt252,
            trace_generator: felt252,
            global_values: GlobalValues
        ) -> felt252 {
            eval_composition_polynomial_inner_part_2(
                mask_values,
                constraint_coefficients,
                point,
                trace_generator,
                global_values
            )
        }
    }
}


#[starknet::contract]
mod StarknetLayoutContract2 {
    use super::IStarknetLayoutContract2;
    use cairo_verifier::air::layouts::starknet::{
        global_values::GlobalValues,
        autogenerated::eval_oods_polynomial_inner,
    };

    #[storage]
    struct Storage {}

    #[abi(embed_v0)]
    impl StarknetLayoutContract2 of IStarknetLayoutContract2<ContractState> {
        fn eval_oods_polynomial_inner(
            self: @ContractState,
            column_values: Span<felt252>,
            oods_values: Span<felt252>,
            constraint_coefficients: Span<felt252>,
            point: felt252,
            oods_point: felt252,
            trace_generator: felt252,
        ) -> felt252 {
            eval_oods_polynomial_inner(
                column_values,
                oods_values,
                constraint_coefficients,
                point,
                oods_point,
                trace_generator,
            )
        }
    }
}