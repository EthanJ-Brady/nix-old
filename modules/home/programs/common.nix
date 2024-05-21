{ pkgs, ... }:

{
    home.packages = with pkgs; [
        bottles
        easyeffects
        gnome-usage
        gnome.gnome-disk-utility
        kitty
        pavucontrol
    ];

    programs.obs-studio.enable = true;
}
