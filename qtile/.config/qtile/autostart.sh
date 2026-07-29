#!/bin/bash

nitrogen --restore &
if [ "$XDG_SESSION_TYPE" = "x11" ]; then
  picom --config ~/.config/picom/picom.conf &
fi
#picom --config ~/.config/picom/picom.conf &
nm-applet &
pasystray &
xrandr --output DP-0 --mode 1920x1080 --rate 144 &
dunst &
copyq --start-server &
export XCURSOR_THEME=Breeze_Light
export XCURSOR_SIZE=24
xss-lock -- betterlockscreen -l blur &
# Lock after 30 minutes
xset s 1800

# Turn monitor off after 15 minutes
xset dpms 2100 2100 2100
