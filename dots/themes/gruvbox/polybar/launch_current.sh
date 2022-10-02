!#/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar mybar1 &
polybar mybar2 &
