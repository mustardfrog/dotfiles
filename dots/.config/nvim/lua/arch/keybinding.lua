
local opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

vim.cmd [[
    let g:user_emmet_leader_key = "<C-f>"
    "vmap <C-\> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
    "nnoremap <C-s> :call system("wl-copy", @")<CR>
    vmap <C-\> y:call system("wl-copy", @")<CR>:call system("wl-copy", @")<CR>
    nnoremap Y y$
    vnoremap <CR> :SnipRun<CR>
    "nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-t> :Lexplore<CR>

    " Use <Tab> and <S-Tab> to navigate through popup menu
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
    nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
    nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
    nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>
    "autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
    "nnoremap <silent> <C-K> <cmd>lua vim.lsp.buf.signature_help()<CR>
    nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
    nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
]]

keymap('n', '<C-s>', ':w<CR>', opts)
keymap('n', '<C-n>', ':bn<CR>', opts)
keymap('n', '<C-p>', ':bp<CR>', opts)
keymap('n', '<C-x>', ':bd<CR>', opts)
keymap('i', 'jk', '<ESC>', opts)

keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts )
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts )
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts )
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts )
