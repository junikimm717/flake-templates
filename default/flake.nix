{
  description = "Juni's Vanilla Flake Template";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };

  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib;
    eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        version = "0.1.0";
        name = "package name";
      in {

        devShell = pkgs.mkShell { buildInputs = [ ]; };

        defaultPackage = pkgs.stdenv.mkDerivation { inherit name version; };

        formatter = nixpkgs.legacyPackages."${system}".nixfmt;

      });
}
