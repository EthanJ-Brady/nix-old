{ config, pkgs, ... }:

{
    gtk = {
        enable = true;
        theme = {
            name = "Catppuccin";
            package = pkgs.catppuccin-gtk.override {
                accents = [ "blue" ];
                size = "standard";
                variant = "frappe";
            };
        };
    };

    # Symlink the `~/.config/gtk-4.0/` folder declaratively:
    xdg.configFile = {
        "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
        "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
        "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
    };

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "user-theme@gnome-shell-extensions.gcampax.github.com"
        ];

        "org/gnome/shell/extensions/user-theme" = {
            "name" = "Catppuccin-Frappe-Standard-Blue-Dark";
        };
    };
}
