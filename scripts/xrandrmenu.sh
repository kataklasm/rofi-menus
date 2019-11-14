#!/bin/bash

# options to be displyed
option0="activate all monitors"
option1="monitor eDP-1 off"
option2="monitor DP-1 off"
option3="monitor eDP-1 primary"
option4="monitor DP-1 primary"
option5="monitor DP-1 same as 0"
option6="monitor DP-1 right of 0"
option7="monitor DP-1 left of 0"
option8="monitor DP-1 above 0"
option9="monitor DP-1 below 0"
option10="rotate monitor DP-1 right"
option11="rotate monitor DP-1 left"
option12="rotate monitor DP-1 normal"

# Variable passed to rofi
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7\n$option8\n$option9\n$option10\n$option11\n$option12"

selected="$(echo -e "$options" | rofi -lines 13 -dmenu -p "xrandr")"
case $selected in
    $option0)
        xrandr --auto;;
    $option1)
        xrandr --output eDP-1 --off;;
    $option2)
        xrandr --output DP-1 --off;;
	$option3)
		xrandr --output eDP-1 --primary;;
	$option4)
		xrandr --output DP-1 --primary;;
    $option5)
        xrandr --output DP-1 --same-as eDP-1;;
    $option6)
        xrandr --output DP-1 --right-of eDP-1;;
    $option7)
        xrandr --output DP-1 --left-of eDP-1;;
    $option8)
        xrandr --output DP-1 --above eDP-1;;
    $option9)
        xrandr --output DP-1 --below eDP-1;;
    $option10)
        xrandr --output DP-1 --rotate left;;
    $option11)
        xrandr --output DP-1 --rotate right;;
    $option12)
        xrandr --output DP-1 --rotate normal;;
esac
