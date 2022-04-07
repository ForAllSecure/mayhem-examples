#![no_main]
#[macro_use] extern crate libfuzzer_sys;

use std::process;

fuzz_target!(|data: &[u8]| {
    if data.len() >= 3 {
        if data[0] == 'b' as u8 {
            if data[1] == 'u' as u8 {
                if data[2] == 'g' as u8 {
                    process::abort();
                }
            }
        }
    }
});
