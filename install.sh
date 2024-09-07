#! /usr/bin/env bash
sudo pacman -Syu
sudo pacman -S git vim htop zsh zathura foot alacritty tmux sway fd ripgrep \
  flameshot yazi swaylock swayidle wl-clipboard grim slurp sxiv \
  gcc clang ninja
# sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
