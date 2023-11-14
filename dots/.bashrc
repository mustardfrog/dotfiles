#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

_set_liveuser_PS1() {
    PS1='[\u@\h \W]\$ '
    if [ "$(whoami)" = "liveuser" ] ; then
        local iso_version="$(grep ^VERSION= /usr/lib/endeavouros-release 2>/dev/null | cut -d '=' -f 2)"
        if [ -n "$iso_version" ] ; then
            local prefix="eos-"
            local iso_info="$prefix$iso_version"
            PS1="[\u@$iso_info \W]\$ "
        fi
    fi
}
_set_liveuser_PS1
unset -f _set_liveuser_PS1

ShowInstallerIsoInfo() {
    local file=/usr/lib/endeavouros-release
    if [ -r $file ] ; then
        cat $file
    else
        echo "Sorry, installer ISO info is not available." >&2
    fi
}


alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
# bind -x '"\C-k": lf ~/Pictures/wallpapers/'

################################################################################
## Some generally useful functions.
## Consider uncommenting aliases below to start using these functions.
##
## October 2021: removed many obsolete functions. If you still need them, please look at
## https://github.com/EndeavourOS-archive/EndeavourOS-archiso/raw/master/airootfs/etc/skel/.bashrc

_open_files_for_editing() {
    # Open any given document file(s) for editing (or just viewing).
    # Note1:
    #    - Do not use for executable files!
    # Note2:
    #    - Uses 'mime' bindings, so you may need to use
    #      e.g. a file manager to make proper file bindings.

    if [ -x /usr/bin/exo-open ] ; then
        echo "exo-open $@" >&2
        setsid exo-open "$@" >& /dev/null
        return
    fi
    if [ -x /usr/bin/xdg-open ] ; then
        for file in "$@" ; do
            echo "xdg-open $file" >&2
            setsid xdg-open "$file" >& /dev/null
        done
        return
    fi

    echo "$FUNCNAME: package 'xdg-utils' or 'exo' is required." >&2
}

#------------------------------------------------------------

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##

# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=eos-pacdiff
alias pix='flatpak run com.orama_interactive.Pixelorama'
# alias fzf
alias e='emacsclient -c'
# alias hx='helix'
alias c='cargo'
alias pn='pnpm'
# alias xi='sudo xbps-install'
# alias xq='xbps-query'
alias p='doas pacman'
alias g='g++ -std=c++17'
alias ls='ls --color=auto'
alias ll='eza --icons'
alias dvorak='hyprctl --batch "keyword input:kb_layout us ; keyword input:kb_variant dvorak"'
alias qwerty='hyprctl --batch "keyword input:kb_layout us ; keyword input:kb_variant mac"'
alias mm='hyprctl --batch "keyword input:kb_layout mm "'
################################################################################

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

# bun completions
[ -s "/home/chaeng/.bun/_bun" ] && source "/home/chaeng/.bun/_bun"

# bun
# export PATH="$HOME/.cargo/env"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
#export TERM=xterm-256color-italic
#alias dotfiles='/usr/bin/git --git-dir=/home/archmonkey/.dotfiles/ --work-tree=/home/archmonkey'
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

PS1='\[$(tput setaf 1)\]\W > \[$(tput setaf sgr0)\]'

# pnpm
export PNPM_HOME="/home/chaeng/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Turso
export PATH="/home/chaeng/.turso:$PATH"
