#!/bin/bash
### select screen power

input=$(printf "primary only\nsecondary only\nboth" | fuzzel --dmenu --icon-theme=Rose-Pine)

output_1="DP-3"
output_2="DP-4"

case "$input" in
	"primary only")
		niri msg output $output_1 off ; niri msg output $output_2 on
		;;
	"secondary only")
		niri msg output $output_1 on ; niri msg output $output_2 off
		;;
	both)
		niri msg output $output_1 on ; niri msg output $output_2 on
		;;
esac
