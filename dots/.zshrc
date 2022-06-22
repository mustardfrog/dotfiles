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

alias e='emacsclient -c'
alias xi='sudo xbps-install'
alias xq='xbps-query'
alias p='sudo pacman'
alias g='g++ -std=c++17'
alias ls='ls --color=auto'
alias ll='exa -l --icons'


export EDITOR='nvim'
export BROWSER='firefox'
export PATH=$PATH:~/.local/bin
export DENO_INSTALL="/home/endevour/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
#export PATH=~/.local/bin:$PATH
#export GOPATH=\$HOME/go
#export PATH=$PATH:$GOPATH/bin

eval "$(starship init zsh)"

#LFCD="$GOPATH/src/github.com/gokcehan/lf/etc/lfcd.sh"  # source
LFCD="$HOME/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

#export TERM=xterm-256color-italic
#alias dotfiles='/usr/bin/git --git-dir=/home/archmonkey/.dotfiles/ --work-tree=/home/archmonkey'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
