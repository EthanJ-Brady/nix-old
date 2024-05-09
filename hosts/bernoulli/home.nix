{ config, pkgs, ... }:

{
    home.username = "ethan";
    home.homeDirectory = "/home/ethan";

    imports = [
        ../../modules/home/terminal/terminal.nix
        ../../modules/home/graphic/gnome/gnome.nix
        ../../modules/home/gaming/gaming.nix
        ../../modules/home/programming/programming.nix
        ../../modules/home/app/todoist.nix
        ../../modules/home/app/neovim.nix
        ../../modules/home/app/obs.nix
        ../../modules/home/terminal/shells/fish.nix
    ];

    consoleEmulation.enable = true;

    git = {
        username = "Ethan Brady";
        email = "git@ethanbrady.xyz";
    };

    home.stateVersion = "23.11";

    home.sessionVariables = {
        # EDITOR = "emacs";
    };

    catppuccin.flavour = "frappe";

    gtk = {
        iconTheme = {
            name = "Papirus-Dark";
            package = pkgs.papirus-icon-theme;
        };
        cursorTheme = {
            name = "Catppuccin-Frappe-Maroon-Cursors"; # 
            package = pkgs.catppuccin-cursors.frappeMaroon;
            size = 16;
        };
    };

    programs.home-manager.enable = true;
}
