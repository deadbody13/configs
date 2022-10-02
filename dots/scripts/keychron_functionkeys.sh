#!/bin/bash

echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf
