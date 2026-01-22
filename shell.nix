# Pin to nixos-unstable for Hugo 0.146.0+ (required by PaperMod theme)
let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
  pkgs = import nixpkgs {};
in
pkgs.mkShell {
  buildInputs = [ pkgs.hugo ];

  shellHook = ''
    echo "Hugo $(hugo version | head -1)"
    echo "Run 'hugo server -D' to start local dev server"
  '';
}
