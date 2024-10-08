{ inputs, ... }:

{
    imports = [
        ../../modules/home/neovim/default.nix
        # ../../modules/home/tools/starship.nix
        ../../modules/home/programs/kitty.nix
        inputs.catppuccin.homeManagerModules.catppuccin
    ];

    catppuccin.flavour = "frappe";
    programs.nixvim.colorschemes.catppuccin.enable = true;
    programs.nixvim.colorschemes.catppuccin.settings.flavour = "frappe";
    programs.kitty.catppuccin.enable = true;
    home.stateVersion = "23.11";
}
