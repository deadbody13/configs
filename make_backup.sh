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
	$CONFIG/nvim
	$CONFIG/picom
	$CONFIG/polybar
	$CONFIG/rofi
	$CONFIG/sway
	$HOME/.Xresources
	$HOME/.zshrc
	$HOME/.zshenv
	$HOME/.fonts
	$HOME/.themes
	$HOME/.vimrc
	$HOME/bin
")

if [[ $COMPUTER ]]
then
	rsync --delete -aruv $DIR_LIST current_$COMPUTER
else
	echo 'set $COMPUTER first'
	exit
fi

