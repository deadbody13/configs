# Lines configured by zsh-newuser-install
# autoload -U colors && colors
# export TERM=xterm-mono
export TERM=foot
RED="%{$fg[red]%}"
BLUE="%{$fg[blue]%}"
GREEN="%{$fg[green]%}"
RESET="%{$reset_color%}"
# export PS1="[$GREEN%n$RESET@%m$BLUE:%1d$RESET]$ "
export PS1="%2d: "
export COLORTERM=truecolor

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sven/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# alias ll="eza -lhg"
alias ll="g --table --table-style=unicode --long"
