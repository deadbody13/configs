#!/bin/bash
# this just copies the files into their appropriate locations and runs the command needed for URxvt to source .Xresources

cp -r .urxvt $HOME
cp -r .Xresources $HOME
xrdb $HOME/.Xresources
