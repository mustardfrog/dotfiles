set nu relativenumber
set mouse=nvi
set nocompatible
"set termguicolors
"set signcolumn
set cmdheight=2
set incsearch
"set completeopt='menuone,noinsert,noselect'
let mapleader=" "
set laststatus=2
set noerrorbells
set nohidden
noremap <C-N> :bn<CR>
noremap <C-P> :bp<CR>
noremap <C-x> :bd<CR>
set encoding=UTF-8
set scroll=8
imap jk <ESC>
"nnoremap <C-(> <C-w>+
nnoremap <C-_> <C-w>-

call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'
Plug 'mattn/emmet-vim'
"Plug 'sainnhe/sonokai'
Plug 'dracula/vim'


Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
"Plug 'preservim/nerdtree'
"Plug 'ryanoasis/vim-devicons'

"Plug 'rakr/vim-one'
"Plug 'ayu-theme/ayu-vim'

call plug#end()

let g:gruvbox_transparent_bg=1
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
set bg=dark
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
"Available values:   `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`,
"let g:sonokai_better_performance = 1
colorscheme dracula
"vmap <C-\> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
vmap <C-\> y:call system("wl-copy", @")<CR>:call system("wl-copy", @")<CR>

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = 1
let g:gruvbox_italicize_comments = 1
"nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-t> :Lexplore<CR>
