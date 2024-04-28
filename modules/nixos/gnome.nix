{ config, pkgs, lib, ... }:

{
    services.xserver.desktopManager.gnome.enable = true;
    services.gnome.core-utilities.enable = false; # Disable GNOME core utilities

    programs.dconf.enable = true;

    environment.systemPackages = with pkgs; [
        gnome.adwaita-icon-theme
        gnome.gnome-tweaks
    ];

    environment.gnome.excludePackages = [ pkgs.gnome-tour ];
    services.xserver.excludePackages = [ pkgs.xterm ];
}

