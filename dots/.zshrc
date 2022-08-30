# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
bindkey -s '^r' 'lfub^M'

zstyle :compinstall filename '/home/archmonkey/.zshrc'
zstyle ':completion:*' menu select
zmodload zsh/complist
use_color=true
autoload -Uz compinit
compinit
_comp_options+=(globdots)		# Include hidden files.
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

alias up="sudo apt-get update"
alias e='emacsclient -c'
alias xi='sudo xbps-install'
alias xq='xbps-query'
alias p='sudo pacman'
alias g='g++ -std=c++17'
alias ls='ls --color=auto'
alias ll='exa --icons'


export EDITOR='nvim'
export BROWSER='firefox'
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share
export DENO_INSTALL="/home/chaeng/.deno"
export DENO_INSTALL=$HOME/.deno
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH=/home/chaeng/.nimble/bin:$PATH
export PATH=$PATH:/usr/local/bin/zig

export GOPATH=$HOME/go
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOPATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))
#export PATH=~/.local/bin:$PATH

eval "$(starship init zsh)"
export TERM=xterm-256color

#export TERM=xterm-256color-italic
#alias dotfiles='/usr/bin/git --git-dir=/home/archmonkey/.dotfiles/ --work-tree=/home/archmonkey'
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env
#source /usr/share/zsh/autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
