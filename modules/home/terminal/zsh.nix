

{
    imports = [
        ./tools/bat.nix
        ./tools/eza.nix
        ./tools/fzf.nix
        ./tools/zoxide.nix
    ];

    programs.zsh = {
        enable = true;
        syntaxHighlighting.enable = true;
        initExtra = ''
            function precmd() {echo ""} # Add a newline before the prompt
        '';
        shellAliases = {
            python = "python3";
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
