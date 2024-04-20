{ pkgs, ... }:

{
    gtk = {
        enable = true;
        theme = {
            name = "Catppuccin";
            package = pkgs.catpuccin-gtk.override {
                accent = [ "blue" ];
                size = "standard";
                variant = "frappe";
            };
        };
    };
}
