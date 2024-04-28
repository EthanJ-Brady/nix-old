{ config, pkgs, inputs, ... }:

{
    environment.systemPackages = with pkgs; [
        via
    ];
    services.udev.packages = with pkgs; [ via ];
}
