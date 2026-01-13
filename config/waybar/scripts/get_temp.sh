#!/bin/bash
# Finds the first sensor reporting over 0 degrees and outputs it
temp=$(cat /sys/class/hwmon/hwmon*/temp1_input | head -n 1)
echo "$((temp / 1000))°C"
