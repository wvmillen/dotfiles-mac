sketchybar --add item battery right                      \
           --set battery script="$PLUGIN_DIR/battery.sh" \
                         update_freq=10                  \
           --subscribe battery system_woke

sketchybar --set battery \
  background.drawing=on \
  background.color=0x50282828 \
  background.border_color=0x701E1E1E \
  background.border_width=1 \
  background.corner_radius=12 \
  background.height=24 \
  background.padding_left=10 \
  background.padding_right=10 \
  padding_left=6 \
  padding_right=6 \
  blur_radius=20 \
  icon.color=0xffebdbb2 \
  label.color=0xffebdbb2
