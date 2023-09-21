#!/bin/bash

BACKUP_DIR=current_$COMPUTER
CONFIG=$HOME/.config
DIR_LIST_HOME=("
	.Xresources
	.fonts
	.themes
	.vimrc
	.zshenv
	.zshrc
	bin
	startpage
	")
DIR_LIST_CONFIG=("
	alacritty
	deadd
	dunst
	fish
	i3
	i3blocks
	i3status
	kitty
	ntfd
	picom
	polybar
	rofi
	sway
	")

for x in $BACKUP_DIR/dir_home/*
do
	cp -r $x $HOME
done
for x in $BAKCUP_DIR/dir_home/.*
do
	cp -r $x $HOME
done

for x in $BACKUP_DIR/dir_config/*
do
	cp -r $x $CONFIG
done
