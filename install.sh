#! /usr/bin/env bash

echo "Updating....."
sudo pacman -Syu

echo "Installing packages..."
sudo pacman -S vim neovim htop zsh zathura alacritty tmux sway flameshot exa lf swaylock swayidle wl-clipboard

echo "Preparing to build AUR..."
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
