{ pkgs, ... }:

{
    home.username = "ethan";
    home.homeDirectory = "/home/ethan";

    imports = [
        ../../modules/home/neovim/default.nix
        ../../modules/home/app/todoist.nix

        ../../modules/home/gaming.nix

        ../../modules/home/graphic/gnome/gnome.nix
        ../../modules/home/graphic/gtk.nix

        ../../modules/home/programming/git.nix
        ../../modules/home/programming/python.nix

        ../../modules/home/shells/fish.nix

        ../../profiles/home/tools.nix
    ];

    git = {
        username = "Ethan Brady";
        email = "git@ethanbrady.xyz";
    };

    home.packages = with pkgs; [
    	kitty
    ];

    home.stateVersion = "23.11";

    home.sessionVariables = {
        # EDITOR = "emacs";
    };

    catppuccin.flavour = "frappe";

    programs.obs-studio.enable = true;

    programs.home-manager.enable = true;
}
