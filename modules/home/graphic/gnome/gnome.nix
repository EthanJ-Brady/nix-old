{ pkgs, ... }:

{
    imports = [
        ./extensions/forge.nix
        ./extensions/app-hider.nix
        ./extensions/blur-my-shell.nix
        ./extensions/alphabetical-app-grid.nix
        # ./extensions/unite.nix
        ./catppuccin-gtk.nix
    ];

    dconf.settings = {
        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
        };
    };
}
