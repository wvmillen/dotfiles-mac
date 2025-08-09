sketchybar --add item appearance right                                   \
           --set appearance script="$PLUGIN_DIR/darkmode.sh"             \
           					click_script="$PLUGIN_DIR/darkmode_click.sh" \
           					update_freq=1

sketchybar --set appearance \
  background.drawing=on \
  background.color=0x50282828 \
  background.border_color=0x701E1E1E \
  background.border_width=1 \
  background.corner_radius=12 \
  background.height=24 \
  blur_radius=20 \
  icon.padding_left=8 \
  icon.padding_right=0
