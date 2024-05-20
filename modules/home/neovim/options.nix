{ ... }:

{
    programs.nixvim.options = {
        showmatch = true;
        ignorecase = true;
        hlsearch = true;
        incsearch = true;
        tabstop = 4;
        softtabstop = 4;
        expandtab = true;
        shiftwidth = 4;
        autoindent = true;
        number = true;
        wildmode = "longest,list";
        ttyfast = true;
        wrap = true;
        linebreak = true;
        breakindent = true;
        breakindentopt = "shift:4";
        encoding = "utf-8";
        foldmethod = "indent";
        foldlevel = 99;
        smartcase = true;
        relativenumber = true;
        signcolumn = "yes";
        termguicolors = true;
        scrolloff = 8;
    };
}
