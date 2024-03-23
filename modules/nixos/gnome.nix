{ config, pkgs, ... }:

{
    services.xserver.desktopManager.gnome.enable = true;
    services.gnome.core-utilities.enable = false; # Disable GNOME core utilities

    environment.systemPackages = with pkgs; [
        gnome.adwaita-icon-theme
    ];

    environment.gnome.excludePackages = [ pkgs.gnome-tour ];
    services.xserver.excludePackages = [ pkgs.xterm ];
}

