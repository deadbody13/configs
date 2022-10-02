#!/bin/bash

echo "Are you sure you would like to shutdown? [y/n]: "
read response

if [[ $response == "y" ]]
then
  notify-send "shutting down"
  sleep 5
  /sbin/loginctl poweroff now
fi
