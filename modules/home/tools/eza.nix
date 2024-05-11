{ ... }:

{
    programs.eza = {
        enable = true;
        enableZshIntegration = true;
        enableFishIntegration = true;
        git = true;
        icons = true;
    };

    programs.zsh.shellAliases.ls = "eza";
    programs.zsh.shellAliases.ll = "eza -lh";
    programs.zsh.shellAliases.l = "eza -lah";
    programs.zsh.shellAliases.tree = "eza -T";

    programs.fish.shellAliases.ls = "eza";
    programs.fish.shellAliases.ll = "eza -lh";
    programs.fish.shellAliases.l = "eza -lah";
    programs.fish.shellAliases.tree = "eza -T";
}
