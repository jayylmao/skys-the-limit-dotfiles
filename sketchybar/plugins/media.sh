#!/bin/zsh
STATE="$(echo "$INFO" | jq -r '.state')"

if [ "$STATE" = "playing" ]; then
  MEDIA="$(echo "$INFO" | jq -r '.title' | cut -c 1-20)"
  sketchybar --set $NAME label="$MEDIA" icon=􀊄 drawing=on icon.drawing=on
else
  sketchybar --set $NAME drawing=off icon.drawing=off
fi