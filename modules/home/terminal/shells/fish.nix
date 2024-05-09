{ pkgs, ... }:

{
    home.packages = with pkgs; [
        fishPlugins.done
        fishPlugins.grc
        grc
    ];

    xdg.enable = true; # Required for catppuccin theme to work properly

    programs.fish = {
        enable = true;
        interactiveShellInit = ''
            set fish_greeting # empty string to disable the greeting
        '';
        catppuccin.enable = true;
        plugins = [
            { name = "done"; src = pkgs.fishPlugins.done.src; }
            { name = "grc"; src = pkgs.fishPlugins.grc.src; }
        ];
    };
}
