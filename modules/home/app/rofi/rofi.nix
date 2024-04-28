{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        rofi
    ];
    home.file.".config/rofi/config.rasi".source = ./catppuccin/basic/.config/rofi/config.rasi;
    home.file.".local/share/rofi/themes/catppuccin-mocha.rasi".source = ./catppuccin/basic/.local/share/rofi/themes/catppuccin-mocha.rasi;
}
