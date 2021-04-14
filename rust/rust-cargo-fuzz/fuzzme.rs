#![no_main]
#[macro_use] extern crate libfuzzer_sys;

fuzz_target!(|data: &[u8]| {
    if let Ok(contents) = std::str::from_utf8(data) {
       if contents.contains("bad") {
           div_by_val(0);
       } else {
           div_by_val(1);
       }
    }
});

fn div_by_val(num: i32) -> i32 {
    return 1/num;
}