let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/c0b1da36f7c34a7146501f684e9ebdf15d2bebf8.tar.gz";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    lilypond
    charis-sil
    gentium
    typst
  ];
}
