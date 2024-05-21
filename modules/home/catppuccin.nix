{ pkgs, config, ... }:

{
    xdg.enable = true;
    catppuccin.flavour = "frappe";
    programs.fish.catppuccin.enable = true;
    programs.starship.catppuccin.enable = true;
    programs.nixvim.colorschemes.catppuccin.enable = true;
    programs.nixvim.colorschemes.catppuccin.settings.flavour = "frappe";
    programs.kitty.catppuccin.enable = true;
    programs.fzf.catppuccin.enable = true;
    programs.bat.catppuccin.enable = true;

    gtk = {
        theme = {
            name = "Catppuccin";
            package = pkgs.catppuccin-gtk.override {
                accents = [ "maroon" ];
                size = "standard";
                variant = "frappe";
            };
        };
        cursorTheme = {
            name = "Catppuccin-Frappe-Maroon-Cursors"; # 
            package = pkgs.catppuccin-cursors.frappeMaroon;
            size = 16;
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
            "name" = "Catppuccin-Frappe-Standard-Maroon-Dark";
        };
    };
}
