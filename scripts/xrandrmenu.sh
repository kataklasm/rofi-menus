#!/bin/bash

# options to be displyed
option0="activate all monitors"
option1="monitor <monitor0> off"
option2="monitor <monitor1> off"
option3="monitor <monitor0> primary"
option4="monitor <monitor1> primary"
option5="monitor <monitor1> same as <monitor0>"
option6="monitor <monitor1> right of <monitor0>"
option7="monitor <monitor1> left of <monitor0>"
option8="monitor <monitor1> above <monitor0>"
option9="monitor <monitor1> below <monitor0>"
option10="rotate monitor <monitor1> right"
option11="rotate monitor <monitor1> left"
option12="rotate monitor <monitor1> normal"

# Variable passed to rofi
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7\n$option8\n$option9\n$option10\n$option11\n$option12"

selected="$(echo -e "$options" | rofi -lines 13 -dmenu -p "xrandr")"
case $selected in
    $option0)
        xrandr --auto;;
    $option1)
        xrandr --output <monitor0> --off;;
    $option2)
        xrandr --output <monitor1> --off;;
	$option3)
		xrandr --output <monitor0> --primary;;
	$option4)
		xrandr --output <monitor1> --primary;;
    $option5)
        xrandr --output <monitor1> --same-as <monitor0>;;
    $option6)
        xrandr --output <monitor1> --right-of <monitor0>;;
    $option7)
        xrandr --output <monitor1> --left-of <monitor0>;;
    $option8)
        xrandr --output <monitor1> --above <monitor0>;;
    $option9)
        xrandr --output <monitor1> --below <monitor0>;;
    $option10)
        xrandr --output <monitor1> --rotate left;;
    $option11)
        xrandr --output <monitor1> --rotate right;;
    $option12)
        xrandr --output <monitor1> --rotate normal;;
esac
