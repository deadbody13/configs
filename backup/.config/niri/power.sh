#!/bin/bash

input=$(printf "suspend\0icon\x1fsleep\nshutdown\0icon\x1fshutdown\nreboot\0icon\x1freboot" | fuzzel --dmenu --icon-theme=WhiteSur)

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
