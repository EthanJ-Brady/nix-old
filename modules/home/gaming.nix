{ pkgs, ... }:

{
    home.packages = with pkgs; [
        steam
        lutris
        protonup-qt
        prismlauncher
    ];

    programs.mangohud = {
        enable = true;
        # enableSessionWide = true;
        settings = {
            toggle_hud = "Shift_R+F12";
            full = true;
        };
    };
}
