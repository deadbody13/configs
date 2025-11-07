#!/bin/bash

chosen=$(echo -e "  Lock\n  Suspend\n  Reboot\n  Power Off\n  Logout" | \
	wofi --dmenu --define single_click=true --define hover_select=true --conf=$HOME/.config/wofi/config_power --style=$HOME/.config/wofi/power.css)

case "$chosen" in
	"  Lock") swaylock ;;
	"  Suspend") systemctl suspend ;;
	"  Reboot") systemctl reboot ;;
	"  Power Off") systemctl poweroff ;;
	"  Logout") swaymsg exit ;;
esac

