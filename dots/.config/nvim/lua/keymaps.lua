vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "X", ":bd<CR>")
vim.keymap.set('v', '<leader>y', '"+y')
-- remove this "source" keybiOd later
vim.keymap.set('n', '<leader>O', ':update<CR> :source<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "H", ":bp<CR>")
vim.keymap.set("n", "L", ":bn<CR>")
vim.keymap.set("i", "<C-L>", "<Del>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", ":cnext<CR>zz")
vim.keymap.set("n", "<C-k>", ":cprev<CR>zz")
vim.keymap.set("n", "<leader>gs", ":Git<CR>")
vim.keymap.set({ 'n', 'v' }, "<C-c>", "<ESC>")
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>o', ':Oil<CR>')
vim.keymap.set('n', '<leader>sf', ':Pick files<CR>')
vim.keymap.set('n', '<leader>sb', ':Pick buffers<CR>')
vim.keymap.set('n', '<leader>sg', ':Pick grep_live<CR>')

vim.keymap.set('n', '<leader>n', function()
    vim.diagnostic.jump({ count = 1, float = true })
  end,
  { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>t', function()
    vim.diagnostic.jump({ count = -1, float = true })
  end,
  { desc = 'Go to previos diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
