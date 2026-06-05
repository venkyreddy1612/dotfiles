#!/bin/bash

nitrogen --restore &
picom --config ~/.config/picom/picom.conf &
nm-applet &
pasystray &
xrandr --output DP-0 --mode 1920x1080 --rate 144 &
dunst &
export XCURSOR_THEME=Breeze_Light
export XCURSOR_SIZE=24
