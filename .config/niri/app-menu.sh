#!/bin/bash

pkill fuzzel

input=$(printf "Helium\0icon\x1fweb-browser\nDiscord\0icon\x1fdiscord\nSteam\0icon\x1fsteam" | fuzzel \
--dmenu \
--icon-theme=Newaita \
--minimal-lines \
--y-margin=110 \
--hide-prompt \
--width=15 \
)

case "$input" in
	Helium)
		helium
		;;
	Discord)
		Discord
		;;
	Steam)
		flatpak run com.valvesoftware.Steam
		;;
esac
