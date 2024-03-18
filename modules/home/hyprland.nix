{ config, pkgs, ... }:

{
    wayland.windowManager.hyprland.enable = true;
    wayland.windowManager.hyprland.settings = {
        "$mod" = "SUPER";
        bind = [
            "$mod, SPACE, exec, rofi -show drun"
            "$mod, Return, exec, kitty"
            "$mod, Q, killactive"
            "$mod, B, exec, vivaldi"
            "$mod, D, exec, discord"
        ];
    };
}
