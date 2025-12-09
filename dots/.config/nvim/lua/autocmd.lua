local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- vim.api.nvim_open_win(0, false, { border = "rounded", width = 12, height = 3, relative = 'win', row=3, col=3 })
vim.api.nvim_create_autocmd("BufWritePost", {
  desc = "Save on Format",
  group = vim.api.nvim_create_augroup('format_on_save', { clear = true }),
  -- pattern = { "*.rs", "*.vue", "*.js", "*.ts", "*.ml" },
  pattern = { "*.*" },
  callback = function()
    vim.lsp.buf.format()
  end
})

-- raw auto complete
-- vim.api.nvim_create_autocmd('LspAttach', {
--   callback = function(ev)
--     local client = vim.lsp.get_client_by_id(ev.data.client_id)
--     if client:supports_method('textDocument/completion') then
--       vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--     end
--   end,
-- })
