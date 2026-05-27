#!/bin/bash

nitrogen --restore &
picom --config ~/.config/picom/picom.conf &
nm-applet &
pasystray &
xrandr --output Virtual-1 --mode 1920x1080 &
