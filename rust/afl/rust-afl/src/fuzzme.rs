#[macro_use]
extern crate afl;

use std::process;

fn main() {
    fuzz!(|data: &[u8]| {
        if data[0] == 'b' as u8 {
            if data[1] == 'u' as u8 {
                if data[2] == 'g' as u8 {
                    process::abort();
                }
            }
        }
    });
}

fn div_by_val(num: i32) -> i32 {
    return 1/num;
}
