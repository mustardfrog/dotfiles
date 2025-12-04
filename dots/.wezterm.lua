local wezterm = require 'wezterm'

return {
    -- window_background_image = '/home/chaeng/Pictures/wallpapers/cherry_samurai.png',
    window_background_image_hsb = {
        -- Darken the background image by reducing it to 1/3rd
        -- brightness = 0.1,

        -- You can adjust the hue by scaling its value.
        -- a multiplier of 1.0 leaves the value unchanged.
        hue = 1,
        -- You can adjust the saturation also.
        saturation = 1,
    },
    --color_scheme = "Catppuccin Mocha",
    -- color_scheme = "Oxocarbon Dark (Gogh)",
    -- color_scheme = "IC_Orange_PPL",
    -- color_scheme = 'Gruvbox light, soft (base16)',
    -- color_scheme = 'Everforest Light (Gogh)',
    -- color_scheme = "Bamboo Light",
    -- color_scheme = "Bamboo",
    color_scheme = "duckbones",
    -- color_scheme = "Gruvbox dark, hard (base16)",
    -- color_scheme = "Kanagawa (Gogh)",
    -- font = wezterm.font "Geist Mono",
    -- font = wezterm.font_with_fallback { 'Ricty Diminished', 'Geist Mono' },
    -- font = wezterm.font 'Jetbrains Mono',
    -- font = wezterm.font 'Sudo',
    -- font = wezterm.font 'Mx437HP100LX6x8',
    font = wezterm.font 'Iosevka Comfy Motion',
    line_height = 1.0,
    font_size = 10,
    window_background_opacity = 1,
    colors = {
        -- background = "#000000",
        -- background = "#141913",
        -- cursor_bg="#0096FF",
    },
    hide_tab_bar_if_only_one_tab = true,
    window_padding = {
        left = 20,
    },
}
