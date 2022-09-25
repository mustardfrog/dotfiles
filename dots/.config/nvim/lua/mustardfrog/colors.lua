local catppuccin = require("catppuccin")
-- configure it
catppuccin.setup({
    transparent_background = true
})
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
--vim.g.tokyonight_transparent=true

vim.cmd[[

    "let g:gruvbox_contrast_dark='hard'
    "let g:gruvbox_italicize_comments = 1
    "let g:gruvbox_italic = 1
    "let g:gruvbox_italicize_strings = 1
    ""set background=dark
    "let g:gruvbox_transparent_bg =1
    let g:tokyonight_transparent=1
    colorscheme catppuccin

    "set t_ut=
    "autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
]]

--vim.cmd[[colorscheme gruvbox]]
