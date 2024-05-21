{ ... }:

{
    programs.nixvim.plugins = {
        comment = {
            enable = true;
            settings = {
                toggler.line = "<leader>/";
                toggler.block = "<leader><leader>/";
                opleader.line = "<leader>/";
                opleader.block = "<leader><leader>/";
            };
        };
        fugitive.enable = true;
        gitgutter.enable = true;
        indent-blankline.enable = true;
        lualine.enable = true;
        neoscroll.enable = true;
        nvim-tree = {
            enable = true;
            extraOptions = {
               actions.open_file.quit_on_open = true;
            };
        };
        telescope.enable = true;
        treesitter.enable = true;
        vimtex.enable = true;
    };
}
