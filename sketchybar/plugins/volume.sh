#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

if [ "$SENDER" = "volume_change" ]; then
  VOLUME=$INFO

  case $VOLUME in
    [6-9][0-9]|100) ICON="􀊩"
                    COLOR="0xFFDDC7A1"
    ;;
    [3-5][0-9]) ICON="􀊧"
                COLOR="0xFFDDC7A1"
    ;;
    [1-9]|[1-2][0-9]) ICON="􀊥"
                COLOR="0xFFDDC7A1"
    ;;
    *) ICON="􀊡"
      COLOR="0xFF665654"
  esac

  sketchybar --set $NAME icon="$ICON" label="$VOLUME%" icon.color="$COLOR" label.color="$COLOR"
fi
