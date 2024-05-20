{ ... }:

{
    programs.nixvim.plugins = {
        lsp = {
            enable = true;
            servers = {
                html.enable = true;
                nil_ls.enable = true;
                pyright.enable = true;
                tsserver.enable = true;
            };
        };

        cmp = {
            enable = true;
            autoEnableSources = true;
            # sources = [ 
            #     { name = "nvim_lsp"; }
            #     { name = "path"; }
            #     { name = "buffer"; }
            # ];
        };
    };
}
