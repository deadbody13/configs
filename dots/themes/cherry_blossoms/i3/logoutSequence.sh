#!/bin/bash

echo "Are you sure you would like to logout? [y/n]: "
read response

if [[ $response == "y" ]]
then
  i3-msg exit
fi
