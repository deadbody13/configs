#!/bin/sh

# start in background to send notifications for when battery gets low

# threshold at which to alert user
alert=20

while true
do
  battery_state=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i "  state: " | awk '{print $2}'`
  battery_line=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i " percentage: " | awk '{print $2}'`
  battery_percentage=${battery_line%\%}
  echo "${battery_percentage} : ${alert}"  

  # discharging
  if [ "$battery_state" = "discharging" ]
  then
    if [ "$battery_percentage" -gt "20" ]
    then
      alert=20
    fi
    if [ "$battery_percentage" -le "$alert" ]
    then
      notify-send -u critical "Battery: ${alert}%"
      alert=$((alert-5))
    fi
  fi

  # charging
  if [ "$battery_state" = "charging" ]
  then
    if [ "$battery_percentage" -gt "20" ]
    then
      alert=20
    elif [ "$battery_percentage" -gt "15" ]
    then
      alert=15
    elif [ "$battery_percentage" -gt "10" ]
    then
      alert=10
    fi
  fi

  sleep 30
done
