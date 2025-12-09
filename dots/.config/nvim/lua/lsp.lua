vim.lsp.enable({ "lua_ls", "gopls", "rust-analyzer", "clangd", "python-lsp-server",})
vim.diagnostic.config({ virtual_text = true })

require 'blink.cmp'.setup({
  keymap = {
    preset = 'none',
    ['<CR>'] = { 'select_and_accept', 'fallback' },
    ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
    ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
    ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },

    ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
    ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
  },

  completion = { documentation = { auto_show = true } },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = { implementation = "lua" },
  signature = { enabled = true },
})
