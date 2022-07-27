vim.cmd [[
    let g:user_emmet_leader_key = "<C-f>"
    vmap <leader>y y:call system("wl-copy", @")<CR>:call system("wl-copy", @")<CR>
    "vmap <C-\> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
    "nnoremap Y y$

    " Use <Tab> and <S-Tab> to navigate through popup menu
    "inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    "inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]]


local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

vim.api.nvim_set_keymap('n', '<C-n>', ':bn<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-p>', ':bp<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-x>', ':bd<CR>', opts)
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', opts)

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts )
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts )
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts )
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts )
vim.api.nvim_set_keymap('n', '<C-t>', ':Lexplore<CR>', opts)
-- Expr mappings
vim.keymap.set('i', '<C-n>', function()
 return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
end, { expr = true })

--vim.api.nvim_set_keymap('v', '<leader>yy', '<cmd>y:call system("wl-copy", @")<cr>:call system("wl-copy", @")<cr>', {noremap = false, silent = false})
