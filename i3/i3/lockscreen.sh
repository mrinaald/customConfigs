#!/usr/bin/bash

imgfile="/home/mrinaal/Pictures/Wallpapers/the-amazing-spider-man-spider-uhd-4k-lockscreen.png"

if [[ -f $imgfile ]]; then
    i3lock -i $imgfile
else
    # gnome-screenshot -f /tmp/lockscreen.png 2> /dev/null
    xfce4-screenshooter -fs /tmp/lockscreen.png 2> /dev/null
    convert -blur 10x10 /tmp/lockscreen.png /tmp/lockscreen.png
    i3lock -i /tmp/lockscreen.png
fi
