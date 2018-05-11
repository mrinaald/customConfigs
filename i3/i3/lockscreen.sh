#!/usr/bin/bash

gnome-screenshot -f /tmp/lockscreen.png 2> /dev/null

convert -blur 10x10 /tmp/lockscreen.png /tmp/lockscreen.png

i3lock -i /tmp/lockscreen.png
