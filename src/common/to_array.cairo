use cairo_verifier::common::flip_endiannes::FlipEndiannessU32;

// 2^8 = 256
const U128maxU8: u128 = 256;
const U64maxU8: u64 = 256;
const U32maxU8: u32 = 256;
const U16maxU8: u16 = 256;

// 2^16 = 65536
const U128maxU16: u128 = 65536;
const U64maxU16: u64 = 65536;
const U32maxU16: u32 = 65536;

// 2^32 = 4294967296
const U128maxU32: u128 = 4294967296;
const U64maxU32: u64 = 4294967296;

trait ToArrayTrait<F, T> {
    fn to_array_le(self: F, ref output: Array<T>);
    fn to_array_be(self: F, ref output: Array<T>);
}

impl U256ToArrayU32 of ToArrayTrait<u256, u32> {
    fn to_array_le(mut self: u256, ref output: Array<u32>) {
        self.low.to_array_le(ref output);
        self.high.to_array_le(ref output);
    }

    fn to_array_be(mut self: u256, ref output: Array<u32>) {
        self.high.to_array_be(ref output);
        self.low.to_array_be(ref output);
    }
}

impl U128ToArrayU32 of ToArrayTrait<u128, u32> {
    fn to_array_le(mut self: u128, ref output: Array<u32>) {
        let mut i = 4;
        loop {
            if i != 0 {
                i -= 1;
                let (q, r) = DivRem::div_rem(self, U128maxU32.try_into().unwrap());
                output.append(r.try_into().unwrap());
                self = q;
            } else {
                break;
            }
        }
    }

    fn to_array_be(mut self: u128, ref output: Array<u32>) {
        let mut array = ArrayTrait::<u32>::new();
        self.to_array_le(ref array);
        let mut i = array.len();
        loop {
            if i != 0 {
                i -= 1;
                output.append((*array.at(i)).flip_endiannes());
            } else {
                break;
            }
        }
    }
}
