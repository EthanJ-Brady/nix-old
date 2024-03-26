{ pkgs, ... }:

{
    imports = [
        ./extensions/forge.nix
        ./extensions/app-hider.nix
    ];

    dconf.settings = {
        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
        };
    };
}
