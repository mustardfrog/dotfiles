local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

vim.api.nvim_set_keymap('n', '<C-n>', ':bn<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-p>', ':bp<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-x>', ':bd<CR>', opts)
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', opts)

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts )
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts )
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts )
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts )
vim.keymap.set('n', '<leader>va', ':lua require(\'mustardfrog.telescope\').search_wallpapers()<cr>')
vim.keymap.set('n', '<leader>vga', ':lua require(\'mustardfrog.telescope\').search_gifs()<cr>')

vim.api.nvim_set_keymap('n', '<C-t>', ':Lexplore<CR>', opts)
vim.keymap.set('n', '<space>F', ":Neoformat<CR>", bufopts)

--vim.api.nvim_set_keymap('v', '<leader>yy', '<cmd>y:call system("wl-copy", @")<cr>:call system("wl-copy", @")<cr>', {noremap = false, silent = false})
vim.cmd [[
    let g:user_emmet_leader_key = "<C-f>"
    "vmap <leader>y y:call system("wl-copy", @")<CR>:call system("wl-copy", @")<CR>
    vmap <leader>y y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
    nnoremap Y y$
    inoremap <C-c> <ESC>
    " Use <Tab> and <S-Tab> to navigate through popup menu
    "inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    "inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>

    nnoremap <buffer> <F4> :GodotRunLast<CR>
    nnoremap <buffer> <F5> :GodotRun<CR>
    nnoremap <buffer> <F6> :GodotRunCurrent<CR>
    nnoremap <buffer> <F7> :GodotRunFZF<CR>
]]
--require'lspconfig'.elixirls.setup{
    ---- Unix
    --on_attach = on_attach,
    --cmd = { "/usr/lib/elixir-ls/language_server.sh" };
--}
