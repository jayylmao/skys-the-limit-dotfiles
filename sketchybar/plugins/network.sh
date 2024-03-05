#!/usr/bin/env sh

CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID: .*" | sed 's/^SSID: //')"

if [ "$SSID" = "" ]; then
  sketchybar --set $NAME icon=􀙈 label.drawing=off icon.color=0xFF665654
else
  sketchybar --set $NAME icon=􀙇 label="$SSID" icon.color=0xFFDDC7A1 label.color=0xFFDDC7A1
fi