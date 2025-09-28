#!/bin/bash

echo "Are you sure you would like to logout? [y/n]: "
read response

if [[ $response == "y" ]]
then
  swaymsg exit
fi
