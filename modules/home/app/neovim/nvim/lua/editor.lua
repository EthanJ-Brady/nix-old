vim.o.showmatch = true              -- show matching 
vim.o.ignorecase = true             -- case insensitive 
vim.o.hlsearch = true               -- highlight search 
vim.o.incsearch = true              -- incremental search
vim.o.tabstop = 4                   -- number of columns occupied by a tab 
vim.o.softtabstop = 4               -- see multiple spaces as tabstops so <BS> does the right thing
vim.o.expandtab = true              -- converts tabs to white space
vim.o.shiftwidth = 4                -- width for autoindents
vim.o.autoindent = true             -- indent a new line the same amount as the line just typed
vim.o.number = true                 -- add line numbers
vim.o.wildmode = "longest,list"     -- get bash-like tab completions
vim.o.ttyfast = true                -- faster redrawing
vim.o.wrap = true                   -- wrap lines
vim.o.linebreak = true              -- wrap lines at convenient points
vim.o.breakindent = true            -- indent wrapped
vim.o.breakindentopt = "shift:4"    -- set breakindent options
vim.o.encoding = "utf-8"            -- set encoding to utf-8
vim.o.foldmethod = "indent"         -- fold based on indent
vim.o.foldlevel = 99                -- open all folds
vim.o.ignorecase = true             -- ignore case in search
vim.o.smartcase = true              -- ignore case in search unless an uppercase letter is used
vim.o.relativenumber = true         -- relative line numbers
vim.o.signcolumn = "yes"            -- always show sign column
vim.o.termguicolors = true              
vim.o.scrolloff = 8                 -- keep 8 lines above and below the cursor

-- vim.cmd[[colorscheme catppuccin-mocha]]

-- Diagnostic configuration for LSP
--vim.diagnostic.config({
  --virtual_text = true,
  --signs = true,
--})
