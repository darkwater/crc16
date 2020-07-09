use std::io::Read;

fn main() {
    let mut stdin = vec![];
    std::io::stdin().read_to_end(&mut stdin).expect("failed to read stdin");

    let crc = crc16::State::<crc16::USB>::calculate(&stdin);
    println!("{:04x}", crc);
}
