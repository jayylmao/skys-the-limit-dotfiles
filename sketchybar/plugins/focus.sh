#!/bin/sh

status=$(defaults read com.apple.controlcenter "NSStatusItem Visible FocusModes")

if [ "$status" == 1 ]; then
    sketchybar --set $NAME icon.color=0xFFD3869B
else
    sketchybar --set $NAME icon.color=0xFF3C3836
fi