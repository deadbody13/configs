#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

~/bin/ntfd &
sleep 1
polybar top &
