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
        ../../modules/home/app/neovim/neovim.nix
    ];

    consoleEmulation.enable = true;

    git = {
        username = "Ethan Brady";
        email = "git@ethanbrady.xyz";
    };

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        brave
    ];

    home.sessionVariables = {
        # EDITOR = "emacs";
    };

    programs.home-manager.enable = true;
}
