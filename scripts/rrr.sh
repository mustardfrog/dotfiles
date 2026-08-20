#!/bin/sh

CONFIG="$HOME/.config/sway/config"
wallpaper_var=$(find ~/Pictures/wallpapers/gruvbox-wallpapers/wallpapers/mix/ -type f  | shuf -n 1)
sed -i "s|^output \* bg .*|output * bg $wallpaper_var fill|" "$CONFIG"
swaymsg reload
