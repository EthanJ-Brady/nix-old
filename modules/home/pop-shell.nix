{ pkgs, ... }:

{
    dconf.settings = {
        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
        };

        "org/gnome/shell/extensions/pop-shell" = {
            "active-hint" = true;
            "hint-color-rgba" = "rgba(203,166,247,255)"; #Catpuccin Mauve
        };
    };
}
