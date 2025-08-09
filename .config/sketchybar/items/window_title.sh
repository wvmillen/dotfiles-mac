#!/usr/bin/env sh

sketchybar --add item space_separator left                            \
--add item window_title left                               \
--set window_title    script="$PLUGIN_DIR/window_title.sh" \
icon.drawing=off                     \
label.font="$FONT:Semibold:15.0"         \
--subscribe window_title front_app_switched

sketchybar --set window_title \
  background.drawing=on \
  background.color=0xb0282828 \
  background.border_color=0x701E1E1E \
  background.border_width=1 \
  background.corner_radius=12 \
  background.height=24 \
  background.padding_left=10 \
  background.padding_right=10 \
  padding_left=6 \
  padding_right=6 \
  blur_radius=20 \
  label.padding_left=8 \
  label.padding_right=8 \
  label.font="$FONT:Bold:15.0" \
  label.color=0xffcc241d

