{ pkgs, ... }:

{
    home.packages = with pkgs; [
        # gnomeExtensions.pop-shell
        gnomeExtensions.forge
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            # "pop-shell@system76.com"
            "forge@jmmaranan.com"
        ];

        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
        };

        "org/gnome/shell/extensions/forge" = {
            "window-gap-size" = "uint32 4";
            "window-gap-size-increment" = "uint32 2";
        };

        "org/gnome/shell/extensions/forge/keybindings" = {
            "window-focus-down" = [ "<Alt>Down" ];
            "window-focus-up" = [ "<Alt>Up" ];
            "window-focus-left" = [ "<Alt>Left" ];
            "window-focus-right" = [ "<Alt>Right" ];
            "window-move-down" = [ "<Alt><Shift>Down" ];
            "window-move-up" = [ "<Alt><Shift>Up" ];
            "window-move-left" = [ "<Alt><Shift>Left" ];
            "window-move-right" = [ "<Alt><Shift>Right" ];
            "window-toggle-float" = [ "<Alt>c" ];
        };

        /* "org/gnome/shell/extensions/pop-shell" = {
            "active-hint" = true;
            "hint-color-rgba" = "rgba(203,166,247,255)"; #Catpuccin Mauve
            # "focus-left" = "['<Alt>Left']";
            # "focus-right" = "['<Alt>Right']";
            # "focus-up" = "['<Alt>Up']";
            # "focus-down" = "['<Alt>Down']";
            "tile-move-left" = "['<Alt><Shift>Left']";
            "tile-move-right" = "['<Alt><Shift>Right']";
            "tile-move-up" = "['<Alt><Shift>Up']";
            "tile-move-down" = "['<Alt><Shift>Down']";
        }; */
    };
}
