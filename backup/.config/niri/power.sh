#!/bin/bash

echo ""
echo "1: sleep"
echo "2: power off"
echo "3: reboot"
echo ""

read -p "" input

if [ $input == "1" ]
then
	systemctl suspend
elif [ $input == "2" ]
then
	shutdown now
elif [ $input == "3" ]
then
	reboot
fi
