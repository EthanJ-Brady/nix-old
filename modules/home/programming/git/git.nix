{ config, pkgs, lib, ... }:

{
    options = {
        git = {
            username = lib.mkOption {
                type = lib.types.str;
                description = "Name of the git user";
            };
            email = lib.mkOption {
                type = lib.types.str;
                description = "Email of the git user";
            };
        };
    };

    config = {
        home.packages = with pkgs; [
            git
        ];

        programs.git = {
            enable = true;
            userName = config.git.username;
            userEmail = config.git.email;
        };
    };
}
