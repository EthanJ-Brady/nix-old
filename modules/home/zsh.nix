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
            ls = "eza";                              # Use eza as the default ls
            ll = "eza -lh";                          # ...
            l = "eza -lah";                          # ...
            cat = "bat";                             # Use bat as the default cat
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
