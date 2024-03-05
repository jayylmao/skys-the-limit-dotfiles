#!/bin/sh

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')
HOLD=$(pmset -g batt | grep 'not charging present')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  9[0-9]|100) ICON="􀛨" 
              COLOR="0xFFDDC7A1"
  ;;
  [6-8][0-9]) ICON="􀺸"
              COLOR="0xFFDDC7A1"
  ;;
  [3-5][0-9]) ICON="􀺶"
              COLOR="0xFFDDC7A1"
  ;;
  [1-2][0-9]) ICON="􀛩"
              COLOR="0xFFEA6962"
  ;;
  *) ICON="􀛪"
esac

if [[ $CHARGING != "" ]]; then
  ICON="􀢋"
  COLOR="0xFFA9B665"
fi

if [[ $HOLD != "" ]]; then
  ICON="􀡸"
  COLOR="0xFFD8A657"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%" icon.color="$COLOR" label.color="$COLOR"
