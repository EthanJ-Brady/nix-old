{ pkgs, ... }:

{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    services.nix-daemon.enable = true;

    security.pam.enableSudoTouchIdAuth = true;
    programs.zsh.enable = true;

    system.stateVersion = 4;

    users.users.ethanbrady = {
        name = "ethanbrady";
        home = "/Users/ethanbrady";
    };

    home-manager = {
        users = {
            "ethanbrady" = import ./home.nix;
        };
        useGlobalPkgs = true;
    };
}
