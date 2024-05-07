{ pkgs, ... }:

{
    home.packages = with pkgs; [
        gnomeExtensions.quick-settings-audio-devices-hider
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "quicksettings-audio-devices-hider@marcinjahn.com"
        ];
    };
}
