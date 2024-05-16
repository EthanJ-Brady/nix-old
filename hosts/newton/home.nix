{ pkgs, catppuccin, ... }:

{
    imports = [
        ../../modules/home/app/neovim.nix
        ../../modules/home/tools/starship.nix
        ../../modules/home/app/kitty.nix
        catppuccin.homeManagerModules.catppuccin
    ];

    catppuccin.flavour = "frappe";
    home.stateVersion = "23.11";
}
