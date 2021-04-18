#[macro_use]
extern crate afl;

fn main() {
    fuzz!(|data: &[u8]| {
    if let Ok(contents) = std::str::from_utf8(data) {
        if contents.starts_with("b") {
            if contents[1..].starts_with("u") {
                if contents[2..].starts_with("g") {
                    div_by_val(0);
                }
            }
        }
    }
    });
}

fn div_by_val(num: i32) -> i32 {
    return 1/num;
}
