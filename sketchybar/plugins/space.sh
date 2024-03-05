#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

if [ $SELECTED = true ]; then
	sketchybar --set $NAME icon.color=0xFFD3869B
else
	sketchybar --set $NAME icon.color=0xFFDDC7A1
fi