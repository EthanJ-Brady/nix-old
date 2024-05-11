{ ... }:

{
    programs.zoxide = {
        enable = true;
        enableZshIntegration = true;
        enableFishIntegration = true;
    };

    programs.zsh.shellAliases.cd = "z"; # Use zoxide instead of cd
    programs.fish.shellAbbrs.cd = "z";
}
