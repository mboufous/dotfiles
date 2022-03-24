#!/bin/bash

# options to be displayed
option0="area2clipboard"
option1="screen"
option2="area"
option3="window"

# options to be displyed
options="$option0\n$option1\n$option2\n$option3"

selected="$(echo -e "$options" | rofi -no-config -no-lazy-grab -dmenu -theme ~/.config/rofi/launcher.rasi -p " ")"
case $selected in
    $option0)
        scrot -s -e 'xclip -selection clipboard -t image/png -i $f';;
    $option1)
        cd ~/Pictures/ && sleep 1 && scrot;;
    $option2)
        cd ~/Pictures/ && scrot -s;;
    $option3)
        cd ~/Pictures/ && sleep 1 && scrot -u;;
esac

