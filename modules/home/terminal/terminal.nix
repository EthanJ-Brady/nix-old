{ pkgs, ... }:

{
    imports = [
        ./shells/zsh.nix
        ./tools/bat.nix
        ./tools/eza.nix
        ./tools/fzf.nix
        ./tools/zoxide.nix
    ];

    home.packages = with pkgs; [
        kitty
        lshw
        neofetch
        unzip
        vim
        wget
    ];
}
