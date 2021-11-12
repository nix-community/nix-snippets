builtins.mapAttrs
  (k: _v:
    let
      url = "https://github.com/NixOS/nixpkgs/archive/2fbba4b4416446721ebfb2e0bfcc9e45d8ddb4d2.tar.gz";
      pkgs = import (builtins.fetchTarball url) { system = k; };
    in
    pkgs.recurseIntoAttrs {
      execute-snippets = pkgs.runCommand "execute-snippets"
        {
          buildInputs = [ pkgs.nushell ];
        } ''
        nu -c 'ls | where type == Dir && name != "todo" && name != "scripts" | each {   ls $it.name | each { nix eval -f $it.name } }'
      '';
    }
  )
{
  x86_64-linux = { };
  aarch64 = { };
}
