# export FZF_DEFAULT_COMMAND='rg --nocolor --ignore node_modules -g'
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_DEFAULT_COMMAND='fd -E=node_modules -t=f'

export EDITOR='nvim'
export BROWSER='firefox'
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share
export PATH=$PATH:/usr/local/bin/zig

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.moon/bin:$PATH"

export GEM_PATH="$HOME/.local/share/gem/ruby/"
export PATH=$PATH:$GEM_PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opam configuration
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

export PATH=$PATH:/usr/local/go/bin
# export PATH="$HOME/.moon/bin:$PATH"

export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Turso
export PATH="$HOME/.turso:$PATH"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# >>> coursier install directory >>>
export PATH="$PATH:$HOME/.local/share/coursier/bin"
# <<< coursier install directory <<<

# export MANPAGER='nvim +Man!'
# export DENO_INSTALL="$HOME/.deno"
# export DENO_INSTALL=$HOME/.deno
# export PATH="$DENO_INSTALL/bin:$PATH"
# export PATH=$HOME/.nimble/bin:$PATH
# export PATH=$PATH:$HOME/fun/emsdk/emsdk_env.sh

# export GOROOT=$(which go)
# export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
# export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))
# export PATH=~/.local/bin:$PATH

# export XDG_DATA_DIRS="$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
# export TERM=xterm-256color-italic
# alias dotfiles='/usr/bin/git --git-dir=/home/archmonkey/.dotfiles/ --work-tree=/home/archmonkey'
# [ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env
# eval "$(starship init zsh)"
# [ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export ANDROID_HOME=$HOME/Android/Sdk
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
