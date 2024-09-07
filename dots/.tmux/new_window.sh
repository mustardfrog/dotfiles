#! /usr/bin/bash

if [[command -v nix-shell &> /dev/null]] && [[ -e default.nix ]]; then 
  tmux neww nix-shell
else 
  tmux neww
fi
