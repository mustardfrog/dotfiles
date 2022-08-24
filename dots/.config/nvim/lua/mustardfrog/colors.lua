--local catppuccin = require("catppuccin")
-- configure it
--catppuccin.setup({
    --transparent_background = true
--})
--vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

vim.cmd[[

    colorscheme gruvbox
    let g:gruvbox_italicize_comments = 1
    let g:gruvbox_italic = 1
    let g:gruvbox_italicize_strings = 1
    let g:tokyonight_transparent= 1
    let g:gruvbox_transparent_bg =1
    "let g:gruvbox_contrast_light='hard'
    autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
    "set background=dark
]]

--vim.cmd[[colorscheme gruvbox]]
