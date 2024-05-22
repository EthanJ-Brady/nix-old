{ pkgs, ... }:

{
    home.packages = with pkgs; [
        bottles
        easyeffects
        gnome-usage
        gnome.gnome-disk-utility
        pavucontrol
    ];

    programs.obs-studio.enable = true;
    programs.zathura.enable = true;
}
