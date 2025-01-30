#!/bin/bash

input=$(printf "suspend\0icon\x1fsystem-suspend\nshutdown\0icon\x1fsystem-shutdown\nreboot\0icon\x1fsystem-restart" | fuzzel --dmenu --icon-theme=Rose-Pine)

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
