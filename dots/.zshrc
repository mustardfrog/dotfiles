# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=800
SAVEHIST=800
#export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g'
# export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

bindkey -e
bindkey -s '^r' 'lfub^M'

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST

# Extract the last two directories from the path
prompt_dir() {
  local path_segments
  path_segments=(${(s:/:)PWD})
  if [[ $#path_segments -gt 2 ]]; then
    echo "${path_segments[-2]}/${path_segments[-1]}"
  else
    echo $PWD
  fi
}
# PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
PROMPT='%F{yellow}$(prompt_dir)%f %F{red}${vcs_info_msg_0_}%f$ '

nvi() {
  local file 
  file=$(fzf --query="$1" --select-1 --exit-0)
  if [[ -n "$file" ]]; then
    nvim "$file"
  fi
}

zstyle :compinstall filename '/home/chaeng/.zshrc'
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

alias pix='flatpak run com.orama_interactive.Pixelorama'
alias e='emacsclient -c'
alias hx='helix'
alias c='cargo'
# alias xi='sudo xbps-install'
# alias xq='xbps-query'
alias p='doas pacman'
alias g='g++ -std=c++17'
alias ls='ls --color=auto'
alias ll='exa'
alias dvorak='hyprctl --batch "keyword input:kb_layout us ; keyword input:kb_variant dvorak"'
alias qwerty='hyprctl --batch "keyword input:kb_layout us ; keyword input:kb_variant mac"'
alias mm='hyprctl --batch "keyword input:kb_layout mm "'

export EDITOR='nvim'
export BROWSER='firefox'
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share
# export DENO_INSTALL="/home/chaeng/.deno"
# export DENO_INSTALL=$HOME/.deno
# export PATH="$DENO_INSTALL/bin:$PATH"
# export PATH=/home/chaeng/.nimble/bin:$PATH
export PATH=$PATH:/usr/local/bin/zig
# export PATH=$PATH:$HOME/fun/emsdk/emsdk_env.sh

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/.moon/bin:$PATH"

#export GOROOT=$(which go)
#export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))
#export PATH=~/.local/bin:$PATH

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opam configuration
# [[ ! -r /home/chaeng/.opam/opam-init/init.zsh ]] || source /home/chaeng/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# bun completions
# [ -s "/home/chaeng/.bun/_bun" ] && source "/home/chaeng/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"
#export TERM=xterm-256color-italic
#alias dotfiles='/usr/bin/git --git-dir=/home/archmonkey/.dotfiles/ --work-tree=/home/archmonkey'
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env
# eval "$(starship init zsh)"
# [ -f "/home/chaeng/.ghcup/env" ] && source "/home/chaeng/.ghcup/env" # ghcup-env
# 

function md() {
    pandoc $1 > /tmp/$1.html
    xdg-open /tmp/$1.html
}

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
