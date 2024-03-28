{ pkgs, ... }:

{
    services = {
        udev = {
            packages = with pkgs; [
                game-devices-udev-rules
            ];
        };
    };

    hardware.uinput.enable = true;
}
