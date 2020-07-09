{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell {
  name = "crc16";
  buildInputs = with rustPlatform.rust; [ rustc cargo clippy ];

  RUST_SRC_PATH = "${builtins.fetchTarball {
    url = "https://github.com/rust-lang/rust/archive/${rustPlatform.rust.rustc.version}.tar.gz";
  }}/src/";
}
