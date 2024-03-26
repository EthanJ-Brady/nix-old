{ pkgs, ... }:

{
    home.packages = with pkgs; [
        gnomeExtensions.blur-my-shell
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "blur-my-shell@aunetx"
        ];

        "org/gnome/shell/extensions/blur-my-shell" = {
            "brightness" = "0.5";
            "sigma" = "30";
        };

        "org/gnome/shell/extensions/blur-my-shell/applications" = {
            "whitelist" = [
                "kitty"
            ];
        };
    };
}
