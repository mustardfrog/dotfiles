# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
HISTFILE=~/.histfile
HISTSIZE=800
SAVEHIST=800

bindkey -e
# bindkey -s '^r' 'lf^M'
# bindkey -s '^v' 'bash ~/projects/bash/fzf_tmux_dir/fzf.sh\n'

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST

## PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
PS1='%F{blue}[%1d] :: '
# PROMPT='%F{blue} [%2d] %F{red}${vcs_info_msg_0_}%f%F{green}~> '

nvi() {
  local file 
  file=$(fzf --query="$1" --select-1 --exit-0)
  if [[ -n "$file" ]]; then
    nvim "$file"
  fi
}

zstyle :compinstall filename '$HOME/.zshrc'
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
alias mn='NVIM_APPNAME=minimal_nvim nvim'
alias c='cargo'
alias hx='helix'
alias g='g++ -std=c++17'
alias ls='ls --color=auto'
alias n='nvim'
alias ll='ls --color=auto -al'
alias odin="$HOME/projects/odin/Odin/odin"
alias dlv="$HOME/go/bin/dlv"
alias kill_tmux='kill $(ps -e | rg tmux | awk '{print $1}')'
# alias dvorak='hyprctl --batch "keyword input:kb_layout us ; keyword input:kb_variant dvorak"'
# alias qwerty='hyprctl --batch "keyword input:kb_layout us ; keyword input:kb_variant mac"'
# alias mm='hyprctl --batch "keyword input:kb_layout mm "'

# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
