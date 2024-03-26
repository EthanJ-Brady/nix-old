{ config, pkgs, ... }:

{
    programs.eza = {
        enable = true;
        enableZshIntegration = true;
        git = true;
        icons = true;
    };

    programs.zsh.shellAliases.ls = "eza";
    programs.zsh.shellAliases.ll = "eza -lh";
    programs.zsh.shellAliases.l = "eza -lah";
    programs.zsh.shellAliases.tree = "eza -T";
}
