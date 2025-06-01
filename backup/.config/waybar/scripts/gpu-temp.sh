#!/bin/bash

nvidia-settings -q GPUCoreTemp | grep Attr | awk '{print $4}' | cut -d "." -f 1
