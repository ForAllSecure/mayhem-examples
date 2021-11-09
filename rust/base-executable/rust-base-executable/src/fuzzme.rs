use std::env;
use std::fs::File;
use std::io;
use std::io::prelude::*;
use std::process;

fn main() -> io::Result<()> {
    let args: Vec<String> = env::args().collect();
    let filename = &args[1];

    let mut f = File::open(filename)?;
    let mut buffer = [0; 10];

    // read up to 10 bytes
    f.read(&mut buffer)?;
    fuzzme(&buffer);
    Ok(())
}

fn fuzzme(data: &[u8]) {
    if data[0] == 'b' as u8 {
        if data[1] == 'u' as u8 {
            if data[2] == 'g' as u8 {
                process::abort();
            }
        }
    }
}
