{ ... }:

{
    programs.nixvim.plugins = {
        lsp = {
            enable = true;
            servers = {
                html.enable = true;
                lua-ls.enable = true;
                nil_ls.enable = true;
                pyright.enable = true;
                tsserver.enable = true;
            };
        };

        cmp = {
            enable = true;
            autoEnableSources = true;
            settings = {
                sources = [
                    {name = "buffer";}
                    {name = "path";}
                    {name = "nvim_lsp";}
                    {name = "luasnip";}
                ];
                mapping = {
                    "<C-e>" = "cmp.mapping.close()";
                    "<C-y>" = "cmp.mapping.confirm({ select = true })";
                    "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
                    "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
                };
            };
        };
    };
}
