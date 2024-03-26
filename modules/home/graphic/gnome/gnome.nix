{ pkgs, ... }:

{
    imports = [
        ./extensions/forge.nix
    ];

    dconf.settings = {
        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
        };
    };
}
