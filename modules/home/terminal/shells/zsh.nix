

{
    programs.zsh = {
        enable = true;
        syntaxHighlighting.enable = true;
        initExtra = ''
            function precmd() {echo ""} # Add a newline before the prompt
        '';
        oh-my-zsh = {
            enable = true;
            theme = "robbyrussell";
            plugins = [
                "git"
            ];
        };
    };
}
