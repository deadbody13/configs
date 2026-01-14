#!/bin/bash

pkill fuzzel

input=$(printf "suspend\0icon\x1fsystem-suspend\nshutdown\0icon\x1fsystem-shutdown\nreboot\0icon\x1fsystem-reboot" | fuzzel --dmenu --icon-theme=Newaita-replacement --minimal-lines --y-margin=70 --hide-prompt --width=15)

case "$input" in
	suspend)
		systemctl suspend
		;;
	shutdown)
		shutdown now
		;;
	reboot)
		reboot
		;;
esac
