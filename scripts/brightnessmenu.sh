#!/bin/bash

# options do be displayed
option0="min"
option1="low"
option2="medium"
option3="high"
option4="max"

# options passed to variable
options="$option0\n$option1\n$option2\n$option3\n$option4"

selected="$(echo -e "$options" | rofi -lines 5 -dmenu -p "brightness")"
case $selected in
    $option0)
		sudo bash -c "echo 50 > /sys/class/backlight/intel_backlight/brightness";;
    $option1)
        sudo bash -c "echo 142 > /sys/class/backlight/intel_backlight/brightness";;
    $option2)
        sudo bash -c "echo 234 > /sys/class/backlight/intel_backlight/brightness";;
	$option3)
        sudo bash -c "echo 325 > /sys/class/backlight/intel_backlight/brightness";;
	$option4)
        sudo bash -c "echo 416 > /sys/class/backlight/intel_backlight/brightness";;
esac
