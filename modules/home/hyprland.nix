
{ config, pkgs, ... }:

{
    wayland.windowManager.hyprland.enable = true;
    wayland.windowManager.hyprland.settings = {
        "$mod" = "SUPER";
        bind = [
            "$mod, F, exec, firefox"
            "$mod, Return, exec, kitty"
        ];
    };
}
