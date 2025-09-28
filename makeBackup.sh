#!/bin/bash

pushd backup
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
popd
