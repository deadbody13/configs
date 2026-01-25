#!/bin/bash

pkill fuzzel

input=$(printf "Zen\0icon\x1fweb-browser\nDiscord\0icon\x1fdiscord\nSteam\0icon\x1fsteam" | fuzzel --dmenu --icon-theme=Newaita-replacement --minimal-lines --y-margin=110 --hide-prompt --width=15)

case "$input" in
	Zen)
		flatpak run app.zen_browser.zen
		;;
	Discord)
		flatpak run com.discordapp.Discord
		;;
	Steam)
		flatpak run com.valvesoftware.Steam
		;;
esac
