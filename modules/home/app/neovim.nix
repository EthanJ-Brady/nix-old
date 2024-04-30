{ neovim-config, ... }:

{
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
