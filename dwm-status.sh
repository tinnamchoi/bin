#!/bin/sh
export DISPLAY=:0

while true; do

  BATT=$(cat /sys/class/power_supply/BAT0/capacity)
  DATE=$(/bin/date +"%Y%m%d-%H%M%S (%a)")
  # pulse audio volume
  VOL=$(pamixer --get-volume)

  ROOT="$( echo -e \f028 ) $VOL | $BATT | $DATE"
  #echo $ROOT
  xsetroot -name "$ROOT"

  sleep 61s

done