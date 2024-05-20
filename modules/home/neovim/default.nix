{ inputs, neovim-config, ... }:

{
    #programs.nixvim = {
    #    enable = true;
    #    globals.mapleader = " ";
    #    keymaps = [
    #        # Move a line up or down
    #        {
    #            mode = "n";
    #            key = "<S-Up>";
    #            options.silent = true;
    #            action = ":m .-2<CR>==";
    #        }
    #        {
    #            mode = "n";
    #            key = "<S-Down>";
    #            options.silent = true;
    #            action = ":m .+1<CR>==";
    #        }
    #        {
    #            mode = "v";
    #            key = "<S-Up>";
    #            options.silent = true;
    #            action = ":m '<-2<CR>gv=gv";
    #        }
    #        {
    #            mode = "v";
    #            key = "<S-Down>";
    #            options.silent = true;
    #            action = ":m '>+1<CR>gv=gv";
    #        }

    #        # Control arrow keys for window navigation
    #        {
    #            mode = "n";
    #            key = "<C-Up>";
    #            options.silent = true;
    #            action = "<C-W>k";
    #        }
    #        {
    #            mode = "n";
    #            key = "<C-Down>";
    #            options.silent = true;
    #            action = "<C-W>j";
    #        }
    #        {
    #            mode = "n";
    #            key = "<C-Left>";
    #            options.silent = true;
    #            action = "<C-W>h";
    #        }
    #        {
    #            mode = "n";
    #            key = "<C-Right>";
    #            options.silent = true;
    #            action = "<C-W>l";
    #        }

    #        # Map home and end keys to beginning and end of line
    #        {
    #            mode = "n";
    #            key = "<Home>";
    #            options.silent = true;
    #            action = "^";
    #        }
    #        {
    #            mode = "n";
    #            key = "<End>";
    #            options.silent = true;
    #            action = "$";
    #        }
    #        {
    #            mode = "i";
    #            key = "<Home>";
    #            options.silent = true;
    #            action = "<C-o>^";
    #        }
    #        {
    #            mode = "i";
    #            key = "<End>";
    #            options.silent = true;
    #            action = "<C-o>$";
    #        }

    #        # Copy from clipboard
    #        {
    #            mode = "v";
    #            key = "<leader>y";
    #            options.silent = true;
    #            action = ''"+y'';
    #        }
    #        {
    #            mode = "n";
    #            key = "<leader>y";
    #            options.silent = true;
    #            action = ''"+yg_'';
    #        }
    #        {
    #            mode = "n";
    #            key = "<leader>y";
    #            options.silent = true;
    #            action = ''"+y'';
    #        }

    #        # Paste from clipboard
    #        {
    #            mode = "v";
    #            key = "<leader>p";
    #            options.silent = true;
    #            action = ''"+p'';
    #        }
    #        {
    #            mode = "v";
    #            key = "<leader>P";
    #            options.silent = true;
    #            action = ''"+P'';
    #        }
    #        {
    #            mode = "n";
    #            key = "<leader>p";
    #            options.silent = true;
    #            action = ''"+p'';
    #        }
    #        {
    #            mode = "n";
    #            key = "<leader>P";
    #            options.silent = true;
    #            action = ''"+P'';
    #        }
    #    ];
    #};

    programs.neovim = {
        enable = true;
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
    };
   
    home.file.".config/nvim" = {
        source = "${neovim-config}";
        recursive = true;
    };
}
