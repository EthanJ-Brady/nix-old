require("lazy").setup({
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                integrations = {
                    mason = true,
                }
            })
        end
    }, --theme
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }, -- fuzzy file finder
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = { "python", "markdown", "markdown_inline", "html", "css", "javascript", "typescript", "lua", "json", "yaml", "toml", "bash", "c", "cpp", "rust", "go", "java", "regex", "tsx", "nix", "c_sharp" },
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    }, -- treesitter
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup({
                toggler = {
                    line = '<leader>/',
                    block = '<leader><leader>/',
                },
                opleader = {
                    line = "<leader>/",
                    block = '<leader><leader>/',
                },
            })
        end
    }, -- commenting commands
    {
        'zbirenbaum/copilot.lua',
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    }, -- github copilot
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "lambdalisue/glyph-palette.vim",
        },
        config = function()
            require("nvim-tree").setup {
                view = {
                    cursorline = false,
                },
                actions = {
                    open_file = {
                        quit_on_open = true,
                    }
                },
            }
        end
    }, -- file browser
    {
        'lukas-reineke/indent-blankline.nvim',
        config = function ()
            require('ibl').setup {
                indent = { char = "│" },
                scope = { enabled = false },
            }
        end
    }, -- indent lines
    {
        'nvim-lualine/lualine.nvim',
        config = function ()
            require('lualine').setup {
                options = {
                    theme = 'catppuccin',
                    disabled_filetypes = {
                        'NvimTree',
                    },
                },
            }
        end
    }, -- status line
    {
        'lervag/vimtex',
        ft = { 'tex' },
    }, -- latex
    {
        'airblade/vim-gitgutter',
    }, -- git gutter
    {
        'dstein64/vim-startuptime'
    }, -- startuptime
    {
        "karb94/neoscroll.nvim",
        config = function ()
            require('neoscroll').setup {
                easing_function = "quadratic",
            }
            local t = {}
            t['<PageUp>'] = {'scroll', {'-vim.wo.scroll', 'true', '100'}}
            t['<PageDown>'] = {'scroll', {'vim.wo.scroll', 'true', '100'}}
            require('neoscroll.config').set_mappings(t)
        end
    }, -- smooth scrolling
    { 'tpope/vim-fugitive' }, -- git wrapper
    -- LSP --
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {
        "zbirenbaum/copilot-cmp",
        config = function ()
            require("copilot_cmp").setup()
        end
    },
})
