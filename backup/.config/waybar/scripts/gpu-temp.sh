#!/bin/bash

# nvidia-settings -q GPUCoreTemp | grep Attr | awk '{print $4}' | cut -d "." -f 1
temp=`cat /sys/class/hwmon/hwmon2/temp1_input`
# echo $temp
echo "${temp%???}"
