#!/usr/bin/env bash

killall -q polybar

# Launch bar

hdmi2_status=$(xrandr | grep "HDMI2" | awk '{ print$2 }')

echo "---" | tee -a /tmp/polybar.log

if  [[ $hdmi2_status == "connected" ]]; then 
  polybar bar-external-display 2>&1 | tee -a /tmp/polybar.log & disown
else 
  polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
fi
    
echo "Bar launched..."
