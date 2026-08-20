#!/bin/sh

CONFIG="$HOME/.config/sway/config"
yazi --chooser-file=/tmp/yazi-wallpaper ~/Pictures/wallpapers/
wallpaper_var="$(cat /tmp/yazi-wallpaper)"
sed -i "s|^output \* bg .*|output * bg $wallpaper_var fill|" "$CONFIG"
swaymsg reload
