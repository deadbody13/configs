export COMPUTER="laptop"
export PATH=~/bin:$PATH

export gCOOKBOOK="git@github.com:MostlyHarmlessCafe/Mostly-Harmless-Cafe.git"
export COOKBOOK=~/Mostly-Harmless-Cafe


if [[ -d ~/.cargo ]]
then
	source ~/.cargo/env
	export PATH=~/.cargo/bin:$PATH
	. "$HOME/.cargo/env"
fi

alias vim="nvim"
alias vid="neovide"
alias dnf="dnf5"

# eval "$(starship init zsh)"
