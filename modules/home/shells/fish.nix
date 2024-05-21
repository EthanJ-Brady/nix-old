{ pkgs, ... }:

{
    home.packages = with pkgs; [
        fishPlugins.done
        fishPlugins.grc
        grc
    ];

    programs.fish = {
        enable = true;
        interactiveShellInit = ''
            set fish_greeting # empty string to disable the greeting
        '';
        plugins = [
            { name = "done"; src = pkgs.fishPlugins.done.src; }
            { name = "grc"; src = pkgs.fishPlugins.grc.src; }
        ];
    };
}
