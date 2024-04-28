local lsp_zero = require('lsp-zero')
require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local cmp = require('cmp')

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})

    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

mason.setup({})
mason_lspconfig.setup({
    ensure_installed = {
        "csharp_ls",
        "eslint",
        "ltex",
        "lua_ls",
        "marksman",
        "nil_ls",
        "omnisharp",
        "pyright",
        "tsserver",
    },
    handlers = {
        lsp_zero.default_setup,
    },
})
cmp.setup {
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "copilot", group_index = 2 },
        { name = "buffer", keyword_length = 4 },
        { name = "path" },
    }
}

lsp_zero.setup()
