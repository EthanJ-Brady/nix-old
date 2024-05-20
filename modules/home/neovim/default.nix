{ inputs, neovim-config, ... }:

{
    imports = [
        ./keymaps.nix
        ./options.nix
        ./lsp.nix
    ];

    programs.nixvim = {
        enable = true;
        globals.mapleader = " ";
        colorschemes.catppuccin = {
            enable = true;
            settings.flavour = "frappe";
        };
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
