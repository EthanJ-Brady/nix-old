{ config, pkgs, ... }:

{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    programs.zsh.enable = true;

    security.pam.enableSudoTouchIdAuth = true;

    services.nix-daemon.enable = true;

    system.stateVersion = 4;
}
