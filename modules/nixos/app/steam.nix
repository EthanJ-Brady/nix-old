{ pkgs, ... }:

{
    programs.steam = {
        enable = true;
        gamescopeSession.enable = true;
        remotePlay.openFirewall = true;
    };
}
