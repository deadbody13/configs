#!/bin/bash

pkill fuzzel

input=$(printf "Edge\0icon\x1fcom.microsoft.Edge\nDiscord\0icon\x1fdiscord\nSteam\0icon\x1fsteam" | fuzzel --dmenu --icon-theme=Newaita-replacement --minimal-lines --y-margin=110 --hide-prompt --width=15)

case "$input" in
	Edge)
		flatpak run com.microsoft.Edge
		;;
	Discord)
		flatpak run com.discordapp.Discord
		;;
	Steam)
		flatpak run com.valvesoftware.Steam
		;;
esac
