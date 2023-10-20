#!/usr/bin/env bash

killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar.log
polybar bar 2>&1 | tee -a /tmp/polybar1.log & disown
echo "Bar launched..."
