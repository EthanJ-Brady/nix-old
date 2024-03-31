{ config, pkgs, ... }:

{
    home.username = "ethan";
    home.homeDirectory = "/home/ethan";

    imports = [
        ../../modules/home/terminal/zsh.nix
        ../../modules/home/terminal/kitty.nix
        ../../modules/home/graphic/gnome/gnome.nix
        ../../modules/home/gaming/gaming.nix
        ../../modules/home/programming/programming.nix
        ../../modules/home/app/todoist.nix
    ];

    consoleEmulation.enable = true;

    programs.git = {
        enable = true;
        userEmail = "git@ethanbrady.xyz";
        userName = "Ethan Brady";
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
