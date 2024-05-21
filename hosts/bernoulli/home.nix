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

        ../../modules/home/programs/default.nix

        ../../modules/home/programming/git.nix
        ../../modules/home/programming/python.nix

        ../../modules/home/shells/fish.nix

        ../../modules/home/catppuccin.nix

        ../../profiles/home/tools.nix
    ];

    git = {
        username = "Ethan Brady";
        email = "git@ethanbrady.xyz";
    };

    home.stateVersion = "23.11";

    home.sessionVariables = {
        # EDITOR = "emacs";
    };

    programs.home-manager.enable = true;
}
