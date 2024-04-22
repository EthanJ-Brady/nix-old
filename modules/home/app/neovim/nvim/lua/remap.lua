-- Sets the leader key to space
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true})

-- Move a line up or down
vim.api.nvim_set_keymap('n', '<S-Up>', ':m .-2<CR>==', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Down>', ':m .+1<CR>==', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<S-Up>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<S-Down>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})

-- Control arrow keys for window navigation
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-W>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-W>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Left>', '<C-W>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-W>l', {noremap = true})

-- Map home and end keys to beginning and end of line
vim.api.nvim_set_keymap('n', '<Home>', '^', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<End>', '$', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Home>', '<C-o>^', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<End>', '<C-o>$', {noremap = true, silent = true})

-- Copy from clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>y', '"+yg_', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', {noremap = true, silent = true})

-- Paste from clipboard
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', {noremap = true, silent = true})

-- PLUGINS REMAPS

-- TELESCOPE
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {noremap = true, silent = true})
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, {noremap = true, silent = true})
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {noremap = true, silent = true})

-- FUGITIVE
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, {noremap = true, silent = true})

-- NVIMTREE
vim.api.nvim_set_keymap('n', '<Leader>s', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
