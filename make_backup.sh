#!/bin/bash

if [[ $COMPUTER ]]
then
	echo "Backing up to current_$COMPUTER"
else
	echo "Please set \$COMPUTER... exiting"
	exit
fi

CONFIG=$HOME/.config
BACKUP=current_$COMPUTER
DIR_LIST_CONFIG=("
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
")

DIR_LIST_HOME=("
	$HOME/.Xresources
	$HOME/.fonts
	$HOME/.themes
	$HOME/.vimrc
	$HOME/.zshenv
	$HOME/.zshrc
	$HOME/bin
	$HOME/startpage
")

DIR_HOME=$BACKUP/dir_home
DIR_CONFIG=$BACKUP/dir_config

if [[ ! -d $DIR_HOME ]]
then
	mkdir -p $DIR_HOME
fi
if [[ ! -d $DIR_CONFIG ]]
then
	mkdir -p $DIR_CONFIG
fi

for x in $DIR_LIST_HOME
do
	cp -r $x $DIR_HOME
done
for x in $DIR_LIST_CONFIG
do
	cp -r $x $DIR_CONFIG
done

NVIM=$CONFIG/nvim
NVIM_DIR=nvim
cp -r $NVIM nvim
