{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
    buildInputs = [
	pkgs.apache-jena
	pkgs.python
	pkgs.openssl
    ];
}
