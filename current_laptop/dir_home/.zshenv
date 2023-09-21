export COMPUTER="laptop"
export PATH=~/bin:$PATH

export gCOOKBOOK="git@github.com:deadbody13/deadbody13.github.io.git"
export COOKBOOK=~/deadbody13.github.io


if [[ -d ~/.cargo ]]
then
	source ~/.cargo/env
	export PATH=~/.cargo/bin:$PATH
	. "$HOME/.cargo/env"
fi

alias vim="nvim"
alias vid="neovide"

echo "$USER@$HOSTNAME"
