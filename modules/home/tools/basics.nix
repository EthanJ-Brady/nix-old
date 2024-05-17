{ pkgs, ... }:

{
    home.packages = with pkgs; [
        lshw
        neofetch
        unzip
        vim
        wget
    ];
}
