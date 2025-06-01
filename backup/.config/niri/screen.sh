#!/bin/bash
### select screen power

input=$(printf "extend\nprimary\nsecondary" | fuzzel --dmenu)

output_1="DP-3"
output_2="DP-4"

case "$input" in
	extend)
		niri msg output $output_1 on ; niri msg output $output_2 on
		;;
	primary)
		niri msg output $output_1 off ; niri msg output $output_2 on
		;;
	secondary)
		niri msg output $output_1 on ; niri msg output $output_2 off
		;;
esac
