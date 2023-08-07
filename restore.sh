#!/bin/bash

CONFIG=$HOME/.config
pushd current_$COMPUTER

if [[ $COMPUTER ]] 
then
	CONFIG_LIST=("
		alacritty
		deadd
		dunst
		fish
		i3
		i3blocks
		i3status
		kitty
		ntfd
		nvim
		picom
		polybar
		rofi
		sway
	")
	HOME_LIST=("
		.Xresources
		.fonts
		.themes
		.vimrc
		.zshenv
		.zshrc
		bin
		startpage
	")
else
	echo 'set $COMPUTER first'
	exit
fi

for x in $CONFIG_LIST
do
	cp -r $x ~/.config
done
for x in $HOME_LIST
do
	cp -r $x $HOME
done

popd
