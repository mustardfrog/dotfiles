local opt = vim.opt
local g = vim.g

opt.relativenumber = true
opt.nu = true
opt.expandtab = true
g.mapleader=' '
opt.cmdheight=2
opt.swapfile = false
opt.wrap = true
opt.smartindent = true
opt.termguicolors = true
opt.mouse='nvi'
opt.cursorline = false
opt.hlsearch = false
opt.tabstop=4 
opt.softtabstop=4
opt.shiftwidth=4
opt.scrolloff=8
opt.backup = false
opt.signcolumn= 'yes'
opt.switchbuf='useopen,usetab'
opt.writebackup = false
opt.hidden = false
opt.ic = true
opt.encoding='UTF-8'
opt.scroll=8
opt.hidden = true
opt.updatetime=300
opt.compatible = false
--Set completeopt to have a better completion experience
opt.completeopt='menuone,noinsert,noselect'

vim.cmd[[ 
  set shortmess+=cr 
  syntax enable
  filetype plugin indent on
  set guicursor= 
    "let g:dracula_colorterm=0
    "set t_Co=256
    let g:tokyonight_style = "night"    

    "let g:airline#extensions#tabline#enabled = 1
    "let g:airline#extensions#tabline#formatter = 'unique_tail'
    "augroup fmt
      "autocmd!
      "autocmd BufWritePre * undojoin | Neoformat
    "augroup END

    " Enable tab to spaces conversion
    "let g:neoformat_basic_format_retab = 1
    let g:neoformat_enabled_haskell = ['brittany']
]]

