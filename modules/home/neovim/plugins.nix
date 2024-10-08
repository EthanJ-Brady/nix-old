{ pkgs, ... }:

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
        markdown-preview.enable = true;
        neogen = {
            enable = true;
            keymaps.generate = "<leader>nf";
        };
        neoscroll.enable = true;
        nvim-tree = {
            enable = true;
            extraOptions = {
               actions.open_file.quit_on_open = true;
            };
        };
        telescope = {
            enable = true;
            keymaps = {
                "<leader>ff" = {
                    action = "find_files";
                    mode = "n";
                    options.silent = true;
                };
                "<leader>gf" = {
                    action = "git_files";
                    mode = "n";
                    options.silent = true;
                };
                "<leader>fg" = {
                    action = "live_grep";
                    mode = "n";
                    options.silent = true;
                };
            };
        };
        treesitter.enable = true;
        vimtex.enable = true;
    };

    # programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    #     vim-godot
    # ];
    #
    # programs.nixvim.extraConfigLua = ''
    #     require('vim-godot').setup({})
    # '';
    
    programs.nixvim.keymaps = [
        # Fugitive
        {
            mode = "n";
            key = "<leader>gs";
            options.silent = true;
            action = ":G<CR>";
        }
        # Nvim Tree
        {
            mode = "n";
            key = "<leader>s";
            options.silent = true;
            action = ":NvimTreeToggle<CR>";
        }
    ];
}
