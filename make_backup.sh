#!/bin/bash

CONFIG=$HOME/.config
DIR_LIST=("
	$CONFIG/alacritty
	$CONFIG/deadd
	$CONFIG/dunst
	$CONFIG/fish
	$CONFIG/i3
	$CONFIG/i3blocks
	$CONFIG/i3status
	$CONFIG/kitty
	$CONFIG/ntfd
	$CONFIG/picom
	$CONFIG/polybar
	$CONFIG/rofi
	$CONFIG/sway
	$HOME/.Xresources
	$HOME/.fonts
	$HOME/.themes
	$HOME/.vimrc
	$HOME/bin
")

rsync --delete -aruv $DIR_LIST current

# for x in $DIR_LIST
# do
# 	if [[ -e $x ]]
# 	then
# 		cp -r $x current
# 	fi
# done