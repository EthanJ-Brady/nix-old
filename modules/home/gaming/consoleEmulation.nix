{ config, lib, pkgs, ... }:

{
    options = {
        consoleEmulation.enable = lib.mkEnableOption {
            default = false;
            type = lib.types.bool;
            description = "Enable console emulators";
        };
    };

    config = lib.mkIf config.consoleEmulation.enable {
        home.packages = with pkgs; [
            retroarch
        ];
    };
}

