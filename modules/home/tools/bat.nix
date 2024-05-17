{ ... }:

{
    programs.bat = {
        enable = true;
        catppuccin.enable = true;
    };

    programs.zsh.shellAliases.cat = "bat";
    programs.fish.shellAliases.cat = "bat";
}
