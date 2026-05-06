set nu relativenumber
syntax on
"set list listchars=tab:»-,trail:·,extends:»,precedes:«
set ttymouse=xterm2
set mouse=a
set nocompatible
set tabstop=4 
set termguicolors
set softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase
"set signcolumn
set cmdheight=2
set incsearch
"set completeopt='menuone,noinsert,noselect'
let mapleader=" "
set expandtab
set laststatus=2
set noerrorbells
set hidden
noremap <C-N> :bn<CR>
noremap <C-P> :bp<CR>
noremap <C-x> :bd<CR>
set encoding=UTF-8
set scrolloff=8
imap jk <ESC>
"nnoremap <C-(> <C-w>+
nnoremap <C-_> <C-w>-
inoremap <C-c> <ESC>

"call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'mattn/emmet-vim'
"
"Plug 'ap/vim-css-color'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'catppuccin/vim', { 'as': 'catppuccin' }
"
"Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-fugitive'
"Plug 'preservim/nerdcommenter'
"Plug 'preservim/nerdtree'
"Plug 'ryanoasis/vim-devicons'

"Plug 'Yggdroot/indentLine'
"Plug 'whatyouhide/vim-gotham'
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/everforest'
"Plug 'dracula/vim'
"Plug 'rakr/vim-one'
"Plug 'ayu-theme/ayu-vim'

"call plug#end()

"let g:gruvbox_transparent_bg=1
"autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
set bg=dark
"let g:user_emmet_leader_key="<C-F>"
" The configuration options should be placed before `colorscheme sonokai`.
"Available values:   `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`,
"let g:sonokai_better_performance = 1
"colorscheme catppuccin_mocha
"let g:sonokai_style = 'maia'
"vmap <leader>y y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
vmap <C-\> y:call system("wl-copy", @")<CR>:call system("wl-copy", @")<CR>

"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_transparent_bg = 1
"let g:gruvbox_italicize_comments = 1
"nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-t> :Lexplore<CR>

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
"set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=no
nnoremap H :bp<CR>
nnoremap L :bn<CR>
set statusline=
set statusline+=\ %f 
set statusline+=\ %{StatuslineGit()}
"set statusline+=\ %{coc#status()}%{get(b:,'coc_current_function','')}

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

