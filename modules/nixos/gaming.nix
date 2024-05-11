{ pkgs, ... }:

{
    programs.steam.enable = true;
    programs.steam.remotePlay.openFirewall = true;
    programs.gamemode.enable = true;
    programs.gamescope.enable = true;
    environment.systemPackages = [ pkgs.mangohud ];
    services.udev.packages = [ pkgs.game-devices-udev-rules ];
    hardware.uinput.enable = true;
}
