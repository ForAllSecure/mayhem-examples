#![no_main]
#[macro_use] extern crate libfuzzer_sys;

fuzz_target!(|data: &[u8]| {
    if data.len() >= 3 {
        if data[0] == 'b' as u8 {
            if data[1] == 'u' as u8 {
                if data[2] == 'g' as u8 {
                    div_by_val(0);
                }
            }
        }
    }
});

fn div_by_val(num: i32) -> i32 {
    return 1/num;
}
