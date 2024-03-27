{ pkgs, ... }:

{
    home.packages = with pkgs; [
        gnomeExtensions.unite
    ];
}
