{
  description = "nix-snippets development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }:

    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in
    with pkgs;
    {
      devShell.${system} = mkShell
        {
          buildInputs = [
            nushell
            nixpkgs-fmt
          ];
        };
    };
}
