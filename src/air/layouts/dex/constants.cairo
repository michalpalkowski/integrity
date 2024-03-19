// Dex layout
const CONSTRAINT_DEGREE: u32 = 2;
const CPU_COMPONENT_HEIGHT: felt252 = 16;
const CPU_COMPONENT_STEP: felt252 = 1;
const ECDSA_BUILTIN_RATIO: felt252 = 512;
const ECDSA_BUILTIN_REPETITIONS: felt252 = 1;
const ECDSA_BUILTIN_ROW_RATIO: felt252 = 8192;
const ECDSA_ELEMENT_BITS: felt252 = 251;
const ECDSA_ELEMENT_HEIGHT: felt252 = 256;
const HAS_BITWISE_BUILTIN: felt252 = 0;
const HAS_DILUTED_POOL: felt252 = 0;
const HAS_EC_OP_BUILTIN: felt252 = 0;
const HAS_ECDSA_BUILTIN: felt252 = 1;
const HAS_KECCAK_BUILTIN: felt252 = 0;
const HAS_OUTPUT_BUILTIN: felt252 = 1;
const HAS_PEDERSEN_BUILTIN: felt252 = 1;
const HAS_POSEIDON_BUILTIN: felt252 = 0;
const HAS_RANGE_CHECK_BUILTIN: felt252 = 1;
const HAS_RANGE_CHECK96_BUILTIN: felt252 = 0;
const IS_DYNAMIC_AIR: felt252 = 0;
const LAYOUT_CODE: felt252 = 0x646578;
const LOG_CPU_COMPONENT_HEIGHT: felt252 = 4;
const MASK_SIZE: u32 = 200;
const N_CONSTRAINTS: u32 = 179;
const N_DYNAMIC_PARAMS: felt252 = 0;
const NUM_COLUMNS_FIRST: u32 = 21;
const NUM_COLUMNS_SECOND: u32 = 1;
const PEDERSEN_BUILTIN_RATIO: felt252 = 8;
const PEDERSEN_BUILTIN_REPETITIONS: felt252 = 4;
const PEDERSEN_BUILTIN_ROW_RATIO: felt252 = 128;
const PUBLIC_MEMORY_STEP: felt252 = 8;
const RANGE_CHECK_BUILTIN_RATIO: felt252 = 8;
const RANGE_CHECK_BUILTIN_ROW_RATIO: felt252 = 128;
const RANGE_CHECK_N_PARTS: felt252 = 8;

mod segments {
    const ECDSA: usize = 5;
    const EXECUTION: usize = 1;
    const N_SEGMENTS: usize = 6;
    const OUTPUT: usize = 2;
    const PEDERSEN: usize = 3;
    const PROGRAM: usize = 0;
    const RANGE_CHECK: usize = 4;
}

fn get_builtins() -> Array<felt252> {
    array!['output', 'pedersen', 'range_check', 'ecdsa']
}
