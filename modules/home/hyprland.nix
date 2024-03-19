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
            "$nav" = "ALT";
            "$move" = "ALT + SHIFT";
            "$nav-ws" = "ALT + SUPER";
            "$move-ws" = "ALT + SUPER + SHIFT";
            "$meh" = "SHIFT + ALT + CTRL";
            bind = [
                "$mod, SPACE, exec, rofi -show drun"
                "$mod, Return, exec, kitty"
                "$mod, Q, killactive"
                "$move, up, movewindow, u"
                "$move, right, movewindow, r"
                "$move, down, movewindow, d"
                "$move, left, movewindow, l"
                "$nav, up, movefocus, u"
                "$nav, right, movefocus, r"
                "$nav, down, movefocus, d"
                "$nav, left, movefocus, l"
                "$nav, 1, workspace, 1"
                "$nav, 2, workspace, 2"
                "$nav, 3, workspace, 3"
                "$nav, 4, workspace, 4"
                "$nav, 5, workspace, 5"
                "$nav, 6, workspace, 6"
                "$nav, 7, workspace, 7"
                "$nav, 8, workspace, 8"
                "$nav, 9, workspace, 9"
                "$move, 1, movetoworkspace, 1"
                "$move, 2, movetoworkspace, 2"
                "$move, 3, movetoworkspace, 3"
                "$move, 4, movetoworkspace, 4"
                "$move, 5, movetoworkspace, 5"
                "$move, 6, movetoworkspace, 6"
                "$move, 7, movetoworkspace, 7"
                "$move, 8, movetoworkspace, 8"
                "$move, 9, movetoworkspace, 9"
                "$nav, home, workspace, r-1"
                "$nav, end, workspace, r+1"
                "$move, home, movetoworkspace, r-1"
                "$move, end, movetoworkspace, r+1"
                "$nav, f, fullscreen"
                "$meh, B, exec, ${config.hyprland.browser}"
                "$meh, D, exec, discord"
            ];
            # Special rules for Steam to get the drop-down and low right "Add Game" menus to work right.
            windowrulev2 = [
                "stayfocused, title:^()$,class:^(steam)$"
                "minsize 1 1, title:^()$,class:^(steam)$"
            ];
        };
    };
}
