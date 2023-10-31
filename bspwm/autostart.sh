#!/bin/bash

# Launch bar
$HOME/.config/polybar/launch.sh
# Set wallpaper
nitrogen --restore
# Fix cursor pointer
xsetroot -cursor_name left_ptr
# Set keyboard layout
setxkbmap -model pc104 -layout de,ru -option grp:win_space_toggle
