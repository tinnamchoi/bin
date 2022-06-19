#!/bin/bash

OLD=$(cat /sys/class/backlight/amdgpu_bl0/brightness)

if [[ $1 = "set" ]]; then
  NEW=$2
  echo $NEW > /sys/class/backlight/amdgpu_bl0/brightness && echo Brightness changed to $NEW
  exit 0
fi

if [[ $1 = "down" ]]; then
  NEW=$(($OLD / 2))
  echo $NEW > /sys/class/backlight/amdgpu_bl0/brightness && echo Brightness changed to $NEW
  exit 0
fi

NEW=$(($OLD * 2 + ($OLD == 0)))
NEW=$(($NEW > 255 ? 255 : $NEW))
echo $NEW > /sys/class/backlight/amdgpu_bl0/brightness && echo Brightness changed to $NEW
