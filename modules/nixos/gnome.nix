{ config, pkgs, lib, ... }:

{
    services.xserver.desktopManager.gnome.enable = true;
    services.gnome.core-utilities.enable = false; # Disable GNOME core utilities

    programs.dconf.enable = true;

    environment.systemPackages = with pkgs; [
        gnome.adwaita-icon-theme
        gnome.gnome-tweaks
        gnomeExtensions.pop-shell
    ];

    environment.gnome.excludePackages = [ pkgs.gnome-tour ];
    services.xserver.excludePackages = [ pkgs.xterm ];

    programs.dconf.profiles = {
        user.databases = [{
            settings = with lib.gvariant; {
                # "org/gnome/desktop/wm/keybindings" = {
                #     switch-to-workspace-left = [ "<Super>a" ];
                #     switch-to-workspace-right = [ "<Super>d" ];
                #     move-to-workspace-left = [ "<Shift><Super>a" ];
                #     move-to-workspace-right = [ "<Shift><Super>d" ];
                #     switch-to-workspace-1 = [ "<Super>1" ];
                #     switch-to-workspace-2 = [ "<Super>2" ];
                #     switch-to-workspace-3 = [ "<Super>3" ];
                #     switch-to-workspace-4 = [ "<Super>4" ];
                #     switch-input-source = [ "<Shift><Alt>" ];
                #     switch-input-source-backward = mkEmptyArray type.string;
                #     activate-window-menu = [ "Menu" ];
                #     close = [ "<Shift><Super>w" ];
                #     maximize = [ "<Super>f" ];
                #     toggle-fullscreen = [ "<Shift><Super>f" ];
                # };

                # "org/gnome/shell/keybindings" = {
                #     toggle-application-view = mkEmptyArray type.string;
                #     switch-to-application-1 = mkEmptyArray type.string;
                #     switch-to-application-2 = mkEmptyArray type.string;
                #     switch-to-application-3 = mkEmptyArray type.string;
                #     switch-to-application-4 = mkEmptyArray type.string;
                #
                #     show-screen-recording-ui = mkEmptyArray type.string;
                #     screenshot = mkEmptyArray type.string;
                #     show-screenshot-ui = [ "<Shift><Super>s" ];
                #     screenshot-window = mkEmptyArray type.string;
                # };

                "org/gnome/shell".enabled-extensions = [
                    "shell@pop-os.github.com"
                ];
            };
        }];
    };
}

