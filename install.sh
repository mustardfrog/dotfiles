#! /usr/bin/env bash

echo "Updating....."
sudo pacman -Syu

echo "Installing packages..."
sudo pacman -S vim neovim htop zsh zathura foot tmux sway fd ripgrep flameshot exa lf swaylock swayidle wl-clipboard slurp

echo "Preparing to build AUR(yay)..."
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
