{ config, pkgs, lib, ... }:

{
    options = {
        hyprland = {
            browser = lib.mkOption {
                default = "vivaldi";
                type = lib.types.str;
                description = "The defualt browser to use in hyprland";
            };
        };
    };
    
    config = {
        wayland.windowManager.hyprland.enable = true;
        wayland.windowManager.hyprland.settings = {
            "$mod" = "SUPER";
            "$meh" = "SHIFT + ALT + CTRL";
            bind = [
                "$mod, SPACE, exec, rofi -show drun"
                "$mod, Return, exec, kitty"
                "$mod, Q, killactive"
                "$meh, B, exec, ${config.hyprland.browser}"
                "$meh, D, exec, discord"
            ];
        };
    };
}
