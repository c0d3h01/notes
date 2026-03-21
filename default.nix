{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = [
    pkgs.pnpm
    pkgs.jdk21_headless
    pkgs.python312
    pkgs.clang-tools
    pkgs.nodejs
    pkgs.mdformat
  ];
}
