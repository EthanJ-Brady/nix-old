{ pkgs, ... }:

{
    home.username = "ethan";
    home.homeDirectory = "/home/ethan";

    imports = [
        ../../modules/home/app/neovim.nix
        ../../modules/home/app/todoist.nix

        ../../modules/home/gaming.nix

        ../../modules/home/graphic/gnome/gnome.nix
        ../../modules/home/graphic/gtk.nix

        ../../modules/home/programming/git.nix
        ../../modules/home/programming/python.nix

        ../../modules/home/shells/fish.nix

        ../../modules/home/tools/basics.nix 
        ../../modules/home/tools/bat.nix
        ../../modules/home/tools/eza.nix
        ../../modules/home/tools/fzf.nix
        ../../modules/home/tools/starship.nix
        ../../modules/home/tools/zoxide.nix
    ];

    git = {
        username = "Ethan Brady";
        email = "git@ethanbrady.xyz";
    };

    home.stateVersion = "23.11";

    home.sessionVariables = {
        # EDITOR = "emacs";
    };

    catppuccin.flavour = "frappe";

    programs.obs-studio.enable = true;

    programs.home-manager.enable = true;
}
