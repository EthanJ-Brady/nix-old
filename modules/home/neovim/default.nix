{ inputs, neovim-config, ... }:

{
    imports = [
        ./keymaps.nix
        ./lsp.nix
        ./options.nix
        ./plugins.nix
    ];

    programs.nixvim = {
        enable = true;
        globals.mapleader = " ";
    };

   #  programs.neovim = {
   #      enable = true;
   #      defaultEditor = true;
   #      viAlias = true;
   #      vimAlias = true;
   #  };
   # 
   #  home.file.".config/nvim" = {
   #      source = "${neovim-config}";
   #      recursive = true;
   #  };
}
