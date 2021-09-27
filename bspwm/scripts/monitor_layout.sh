#!/bin/bash

# check if the second screen is active to configure correct layout n stuff
if [[ $(xrandr --query | grep 'HDMI1 connected') ]]; then
    xrandr --output eDP1 --mode 2048x1152 --pos 3440x288 --rotate normal \
           --output HDMI1 --primary --mode 3440x1440 --rotate normal
else
    # laptop only resolution
    xrandr --output eDP1 --primary --mode 2048x1152 --rotate normal
fi