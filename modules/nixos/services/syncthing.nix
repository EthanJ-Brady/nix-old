{ config, lib, ... }:

{
    options = {
        syncthing = {
            defaultDir = lib.mkOption {
                default = "/var/lib/syncthing";
                type = lib.types.str;
                description = "The default directory for syncthing";
            };
            user = lib.mkOption {
                default = "syncthing";
                type = lib.types.str;
                description = "The user to run syncthing as";
            };
        };
    };

    config = {
        services.syncthing = {
            enable = true;
            user = "${config.syncthing.user}";
            dataDir = "${config.syncthing.defaultDir}";
        };
    };
}
