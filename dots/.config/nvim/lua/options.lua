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
-- vim.opt.foldmethod = "manual"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.signcolumn = 'yes:1'
vim.o.bg = "dark"
vim.opt.winborder = "rounded"
-- vim.o.belloff = "esc"

vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "None" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })

if vim.g.neovide then
  vim.opt.guifont = "MartianMono Nerd Font Mono"
  vim.g.neovide_opacity = 0.8
  vim.g.neovide_normal_opacity = 0.8
  vim.g.neovide_cursor_animation_length = 0.10
  vim.g.neovide_cursor_vfx_mode = "wireframe"
  vim.keymap.set({ 'n', 'v' }, '<C-V>', '"+p')
end
