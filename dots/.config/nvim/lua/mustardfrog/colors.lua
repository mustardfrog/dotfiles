local catppuccin = require("catppuccin")
-- configure it
catppuccin.setup({
    transparent_background = true
})

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
--vim.g.oxocarbon_lua_transparent = true
--vim.g.tokyonight_transparent=true

require('lualine').setup{
    options = { theme =  'catppuccin' }
}
vim.cmd[[

    let g:gruvbox_contrast_dark='medium'
    let g:gruvbox_italicize_comments = 1
    let g:gruvbox_italic = 1
    "let g:gruvbox_italicize_strings = 1
    set background=dark
    "let g:gruvbox_transparent_bg =1
    let g:tokyonight_transparent=1
    let g:gruvbox_material_background = 'hard'
    let g:gruvbox_material_better_performance = 1
    let g:gruvbox_material_menu_selection_background = 'green'
    let g:gruvbox_material_spell_foreground = 'none'
    let g:gruvbox_material_diagnostic_text_highlight = 0
    let g:gruvbox_material_diagnostic_line_highlight = 1
    let g:gruvbox_material_diagnostic_virtual_text = 1

    let g:everforest_diagnostic_virtual_text = 'colored'
    let g:everforest_ui_contrast = 'high'
    let g:everforest_background='hard'
    let g:everforest_sign_column_background='grey'


    colorscheme nord


    "set t_ut=
    au VimEnter * hi Normal ctermbg=NONE guibg=NONE
     "au VimEnter * hi LineNr guibg=none ctermbg=none guifg=none
     "au VimEnter * hi StatusLine guibg=none ctermbg=none guifg=none
]]
    -- Lua

--vim.cmd[[colorscheme gruvbox]]
