#!/bin/bash

echo ""
echo "1: power off"
echo "2: sleep"
echo ""

read -p "" input

if [ $input == "1" ]
then
	shutdown now
elif [ $input == "2" ]
then
	systemctl suspend
fi
