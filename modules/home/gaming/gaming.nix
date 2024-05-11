{ pkgs, ... }:

{
    imports = [
        ./consoleEmulation.nix
    ];

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

    # Disables touchpad on Playstation controllers
    services.udev.extraRules = ''
        ATTRS{name}=="Sony Interactive Entertainment Wireless Controller Touchpad", ENV{LIBINPUT_IGNORE_DEVICE}="1"
        ATTRS{name}=="Wireless Controller Touchpad", ENV{LIBINPUT_IGNORE_DEVICE}="1"
    '';
}
