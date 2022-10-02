#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar bar1 &
polybar bar2 &
polybar bar3 &
polybar barMedia &
polybar bar4 &
# polybar mybar1 &
# polybar mybar2 &
