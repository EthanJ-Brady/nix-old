{ pkgs, ... }:

{
    home.packages = with pkgs; [
        gnomeExtensions.alphabetical-app-grid
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "AlphabeticalAppGrid@stuarthayhurst"
        ];
    };
}
