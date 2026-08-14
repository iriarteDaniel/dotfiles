#!/bin/bash
swayidle -w \
  timeout 180 ' swaylock ' \
  timeout 400 ' hyprctl dispatch dpms off' \
  timeout 12000 'systemctl suspend' \
  resume ' hyprctl dispatch dpms on' \
  before-sleep 'swaylock'
