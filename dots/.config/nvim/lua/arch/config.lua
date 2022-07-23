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
    "let g:gruvbox_contrast_light = 'hard'
    "let g:gruvbox_italicize_comments = 1
    "let g:gruvbox_italic = 1
    "let g:gruvbox_transparent_bg=1
    "let g:gruvbox_italicize_strings = 1
    "let g:dracula_colorterm=0
    "set t_Co=256
    autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
    set background=dark
    let g:tokyonight_style = "night"    
    colorscheme tokyonight

    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
     "let g:airline_left_sep='>'
     "let g:airline_right_sep='<'
     "let g:airline_theme='molokai'
     "let g:hindent_on_save = 1
    "let g:hindent_indent_size = 4
    "augroup fmt
      "autocmd!
      "autocmd BufWritePre * undojoin | Neoformat
    "augroup END

    " Enable tab to spaces conversion
    "let g:neoformat_basic_format_retab = 1
    let g:neoformat_enabled_haskell = ['brittany']
]]

--local catppuccin = require("catppuccin")
-- configure it
--catppuccin.setup({
    --transparent_background = true
--}
--)

