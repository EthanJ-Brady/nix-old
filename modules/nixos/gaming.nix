{ pkgs, ... }:

{
    programs.steam.enable = true;
    programs.steam.remotePlay.openFirewall = true;
    programs.gamemode.enable = true;
    programs.gamescope.enable = true;
    environment.systemPackages = [ pkgs.mangohud ];
    services.udev.packages = [ pkgs.game-devices-udev-rules ];
    hardware.uinput.enable = true;

    # Disables touchpad on Playstation controllers
    services.udev.extraRules = ''
        ATTRS{name}=="Sony Interactive Entertainment Wireless Controller Touchpad", ENV{LIBINPUT_IGNORE_DEVICE}="1"
        ATTRS{name}=="Wireless Controller Touchpad", ENV{LIBINPUT_IGNORE_DEVICE}="1"
    '';
}
