export SWAY_SCREENSHOT_DIR=~/Pictures/Screenshots
export PATH=~/.local/bin:~/platform-tools:~/bin:$PATH
export EDITOR=nvim
export VM='sven@localhost'

export gCOOKBOOK="git@github.com:MostlyHarmlessCafe/Mostly-Harmless-Cafe.git"
export COOKBOOK=~/Mostly-Harmless-Cafe


if [[ -d ~/.cargo ]]
then
	source ~/.cargo/env
	export PATH=~/.cargo/bin:$PATH
	. "$HOME/.cargo/env"
fi
export QT_QPA_PLATFORM=wayland

alias vim="nvim"
alias vide="neovide"
alias ff="fastfetch"
alias hugos="hugo server -D --disableFastRender"
alias swaync_reload="swaync-client -R && swaync-client -rs"

jflash=/run/media/sven/jflash
