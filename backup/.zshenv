export SWAY_SCREENSHOT_DIR=~/Pictures/Screenshots
export PATH=~/.local/bin:~/platform-tools:~/bin:$PATH
export EDITOR=nvim
export VM='sven@localhost'

export dir_cyberpunk=/home/sven/.local/share/Steam/steamapps/common/Cyberpunk\ 2077/
alias wine_cyberpunk="protontricks 1091500 --gui"

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
alias ff="fastfetch"
alias hugos="hugo server -D --disableFastRender"
alias swaync_reload="swaync-client -R && swaync-client -rs"
alias purge-local-branches='git branch | grep -v "main" | xargs git branch -D'

alias icon_theme="gsettings get org.gnome.desktop.interface icon-theme"

alias ll="eza -lgh"

jflash=/run/media/sven/jflash

vide () {
	neovide $1 &
}
videe () {
	(neovide $1 &) && exit
	exit
}
