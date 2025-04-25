export COMPUTER="laptop"
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
alias vid="neovide"
# alias dnf="dnf5"
alias hugos="hugo server -D --disableFastRender"
alias swaync_reload="swaync-client -R && swaync-client -rs"
alias arp_scan="sudo arp-scan --interface=wlp3s0 --localnet"
alias vmstart_debian="vboxmanage startvm debian --type headless"
alias vmstop_debian="vboxmanage controlvm debian poweroff"
alias ddgr="ddgr -n 5"
