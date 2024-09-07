#! /usr/bin/env bash
sudo pacman -Syu
sudo pacman -S vim htop zsh zathura foot alacritty tmux sway fd ripgrep \
  flameshot yazi swaylock swayidle wl-clipboard grim slurp sxiv \
  gcc clang ninja make stow
# sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
