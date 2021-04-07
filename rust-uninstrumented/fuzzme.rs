use std::fs::File;
use std::io;
use std::io::prelude::*;
use std::env;

fn main() -> io::Result<()> {
    let args: Vec<String> = env::args().collect();
    let filename = &args[1];

    let mut f = File::open(filename)?;
    let mut buffer = [0; 10];

    // read up to 10 bytes
    f.read(&mut buffer)?;
    bad(&buffer);
    Ok(())
}

fn bad(data: &[u8]) {
    if let Ok(contents) = std::str::from_utf8(data) {
        if contents.starts_with("b") {
            if contents[1..].starts_with("u") {
                if contents[2..].starts_with("g") {
                    div_by_val(0);
                }
            }
        }
    }
}

fn div_by_val(num: i32) -> i32 {
    return 1/num;
}
