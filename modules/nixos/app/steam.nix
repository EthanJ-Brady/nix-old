{ pkgs, ... }:

{
    programs.steam = {
        enable = true;
        gamescopeSession.enable = true;
        remotePlay.openFirewall = true;
    };

    environment.systemPackages = with pkgs; [
        mangohud
        gamescope
    ]; 
}
