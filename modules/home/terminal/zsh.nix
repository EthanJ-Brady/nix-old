{ config, pkgs, ... }:

{
    programs.zsh = {
        enable = true;
        syntaxHighlighting.enable = true;
        initExtra = ''
            function precmd() {echo ""} # Add a newline before the prompt
        '';
        shellAliases = {
            python = "python3";                      # Use python3 as the default python
        };
        oh-my-zsh = {
            enable = true;
            theme = "robbyrussell";
            plugins = [
                "git"
            ];
        };
    };
}
