#!/usr/bin/env bash

killall -q polybar

# Launch bar
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
    
echo "Bar launched..."
