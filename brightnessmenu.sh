#!/bin/bash

# options do be displayed
min="min"
low="low"
medium="medium"
high="high"
max="max"

# options passed to variable
options="$min\n$low\n$medium\n$high\n$max"

selected="$(echo -e "$options" | rofi -dmenu -p "brightness")"
case $selected in
    $min)
		sudo bash -c "echo 50 > /sys/class/backlight/intel_backlight/brightness";;
    $low)
        sudo bash -c "echo 142 > /sys/class/backlight/intel_backlight/brightness";;
    $medium)
        sudo bash -c "echo 234 > /sys/class/backlight/intel_backlight/brightness";;
	$high)
        sudo bash -c "echo 325 > /sys/class/backlight/intel_backlight/brightness";;
	$max)
        sudo bash -c "echo 416 > /sys/class/backlight/intel_backlight/brightness";;
esac
