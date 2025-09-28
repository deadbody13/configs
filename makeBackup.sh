#!/bin/bash

cp -rv ~/{.bash_profile,.bashrc,bin,.fonts,.themes,.vimrc,.zshenv,.zshrc} .
# cp -rv ~/projects/startpage projects/
pushd .config
	for x in *
	do
		if [ -d ~/.config/$x ]
		then
			cp -rv ~/.config/$x .
		elif [ -f ~/.config/$x ]
		then
			cp -rv ~/.config/$x .
		fi
	done
popd
pushd .local/share
	for x in *
	do
		if [ -f ~/.local/$x ]
		then
			cp -rv ~/.local/$x
		fi
	done
popd
cp -r ~/Pictures/Wallpapers .
