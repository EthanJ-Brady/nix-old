{ pkgs, ... }:

{
    programs.kitty = {
        enable = true;
        font = {
            name = "FiraCode Nerd Font";
            package = pkgs.fira-code-nerdfont;
        };
        catppuccin.enable = true;
        shellIntegration.enableFishIntegration = true;
        keybindings = {
            "ctrl+shift+t" = "new_tab_with_cwd";
        };
        settings = {
            window_padding_width = 10;
            hide_window_decorations = "yes";
            tab_bar_min_tabs = 1;
            tab_bar_edge = "bottom";
            tab_bar_style = "powerline";
            tab_powerline_style = "slanted";
            tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
        };
    };
}
