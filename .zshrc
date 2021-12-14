# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

bindkey -s '^r' 'ranger^M'
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/voidmonkey/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR='nvim'
export BROWSER='firefox'
alias e='emacsclient -c'
alias xi='sudo xbps-install'
alias xq='xbps-query'
alias g='g++ -std=c++17'
source ~/powerlevel10k/powerlevel10k.zsh-theme

if command -v theme.sh > /dev/null; then
	[ -e ~/.theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"

	# Optional

	# Bind C-o to the last theme.
	last_theme() {
		theme.sh "$(theme.sh -l|tail -n2|head -n1)"
	}

	zle -N last_theme
	bindkey '^O' last_theme

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
fi

export TERM=xterm-256color-italic
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias dotfiles='/usr/bin/git --git-dir=/home/voidmonkey/.dotfiles/ --work-tree=/home/voidmonkey'
