feh Pictures/road.jpg --bg-fill
setxkbmap dvorak
ibus-daemon -rdx &
# xrdb --merge ~/.Xresources
picom --experimental-backend &
#polybar example &
# emacs --daemon &
#xrandr --output VGA-0 --auto --left-of HDMI-0
exec dwm
