{ ... }:

{
    programs.fzf = {
        enable = true;
        enableZshIntegration = true;
        enableFishIntegration = true;
    };

    programs.fish.shellInitLast = ''
        bind -e \ct
        bind \cf fzf-file-widget
    '';
}
