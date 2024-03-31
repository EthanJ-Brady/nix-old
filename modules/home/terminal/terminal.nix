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
        lshw
        neofetch
        vim
        unzip
        kitty
    ];
}
