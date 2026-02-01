#!/bin/bash
### select screen power

input=$(printf "extend\nprimary\nsecondary\ngaming" | fuzzel --dmenu)

# top
output_1="DP-4"
# bottom
output_2="DP-3"
output_tv="HDMI-A-5"

case "$input" in
	extend)
		niri msg output $output_1  on
		niri msg output $output_2  on
		niri msg output $output_tv off
		;;
	primary)
		niri msg output $output_1  off
		niri msg output $output_2  on
		niri msg output $output_tv off
		;;
	secondary)
		niri msg output $output_1  on
		niri msg output $output_2  off
		niri msg output $output_tv off
		;;
	gaming)
		flatpak kill com.valvesoftware.Steam
		niri msg output $output_1  off
		niri msg output $output_2  off
		niri msg output $output_tv on
		flatpak run com.valvesoftware.Steam -bigpicture
		niri msg output $output_1  on
		niri msg output $output_2  on
		niri msg output $output_tv off
		;;
esac
