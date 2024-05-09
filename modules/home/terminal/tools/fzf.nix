{ ... }:

{
    programs.fzf = {
        enable = true;
        enableZshIntegration = true;
        enableFishIntegration = true;
        catppuccin.enable = true;
    };

    programs.fish.shellInitLast = ''
        bind -e \ct
        bind \cf fzf-file-widget
    '';
}
