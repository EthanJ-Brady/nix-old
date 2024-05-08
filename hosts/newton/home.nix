{ pkgs, ... }:

{
    imports = [
        ../../modules/home/app/neovim.nix
    ];

    home.stateVersion = "23.11";
}
