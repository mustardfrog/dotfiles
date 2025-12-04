vim.o.hlsearch = false
vim.opt.cmdheight = 2
vim.g.syntax = false
vim.wo.number = true
vim.opt.relativenumber = true
vim.o.mouse = 'a'
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 2000
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 5
vim.opt.foldmethod = "manual"
vim.opt.signcolumn = 'yes:1'
vim.o.bg = "dark"
vim.cmd([[
    filetype plugin on
    autocmd BufNewFile,BufRead *.v set ft=v
    autocmd BufNewFile,BufRead *.frag set ft=glsl
    autocmd BufNewFile,BufRead *.vert set ft=glsl
    autocmd BufNewFile,BufRead *.templ setlocal ft=templ
    "set statusline+=%{get(b:,'gitsigns_status','')}\ \ %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
    " autocmd TermOpen * setlocal nonumber norelativenumber
]])

-- if vim.g.neovide then
--   vim.o.guifont = "Iosevka Comfy Wide:h12"
-- end


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

-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
--     vim.lsp.handlers.hover, {
--         border = "rounded"
--     })
--
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
--     vim.lsp.handlers.signature_help, {
--         border = "rounded"
--     })
--
-- vim.diagnostic.config {
--     float = { border = "rounded" }
-- }
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
