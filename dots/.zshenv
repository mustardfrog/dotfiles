. "$HOME/.cargo/env"

# export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
