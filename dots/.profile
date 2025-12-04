export PATH="$PATH:~/.local/bin"
if [ -s ~/.bashrc ]; then
    source ~/.bashrc
fi

# opam configuration
test -r $HOME/.opam/opam-init/init.sh && . $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/.moon/bin:$PATH"

export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share

# export LC_ALL=C

# Turso
export PATH="$HOME/.turso:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# . "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=$PATH:/usr/local/bin/zig

# >>> coursier install directory >>>
export PATH="$PATH:$HOME/.local/share/coursier/bin"
# <<< coursier install directory <<<

# export PATH=$PATH:$HOME/fun/emsdk/emsdk_env.sh
# export DENO_INSTALL="$HOME/.deno"
# export DENO_INSTALL=$HOME/.deno
# export PATH="$DENO_INSTALL/bin:$PATH"
# export PATH=$HOME/.nimble/bin:$PATH
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH
# export PATH=$PATH:$GOPATH/bin
# export GOROOT=$(which go)
# export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
# export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))
# export TERM=xterm-256color-italic

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
