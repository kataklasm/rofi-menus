#!/bin/bash

# options to be displayed
option0="stacked"
option1="tabbed"
option2="split"

# options passed to variable
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "i3layout")"
case $selected in
    $option0)
        i3-msg layout stacked;;
    $option1)
        i3-msg layout tabbed;;
    $option2)
        i3-msg layout toggle split;;
esac
