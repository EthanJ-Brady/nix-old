{ ... }:

{
    imports = [
        ./catppuccin-gtk.nix
        ./extensions/alphabetical-app-grid.nix
        ./extensions/app-hider.nix
        ./extensions/blur-my-shell.nix
        ./extensions/forge.nix
        ./extensions/quick-settings-audio-devices-hider.nix
        ./extensions/quick-settings-audio-devices-renamer.nix
        ./extensions/quick-settings-tweaker.nix
        ./extensions/unite.nix
    ];

    dconf.settings = {
        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
        };
    };
}
