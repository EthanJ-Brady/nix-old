{ pkgs, catppuccin, ... }:

{
    imports = [
        ../../modules/home/app/neovim.nix
        ../../modules/home/terminal/starship.nix
        catppuccin.homeManagerModules.catppuccin
    ];

    home.stateVersion = "23.11";
}
