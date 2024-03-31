#!/bin/bash
# requires /etc/systemd/system/lid_open_script.service
# ---
# [Unit]
# Description=Local system resume actions
# After=suspend.target
# 
# [Service]
# Type=simple
# ExecStart=/usr/bin/bash /home/sven/.config/sway/scripts/lid_open_script.sh
# 
# [Install]
# WantedBy=suspend.target
#
#

light -s sysfs/leds/tpacpi::kbd_backlight -S 50
