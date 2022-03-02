feh Pictures/road.jpg --bg-fill
setxkbmap dvorak
ibus-daemon -rdx &
# xrdb --merge ~/.Xresources
picom &
polybar example &
# emacs --daemon &
exec bspwm
