source "$PLUGIN_DIR/wifi.sh"

sketchybar --add item           wifi.control right                      \
                                                                        \
           --set wifi.control   icon=$WIFI_ICN                                \
                                label.drawing=off                       \
                                click_script="open "x-apple.systempreferences:com.apple.Network-Settings.extension" || open "x-apple.systempreferences:com.apple.preference.network""      \
                                popup.background.color=0x70000000       \
                                popup.blur_radius=50                    \
                                popup.background.corner_radius=5        \
                                                                        \
           --add item           wifi.ssid popup.wifi.control            \
           --set wifi.ssid      icon=$NETWORK_ICN                                \
                                label="${SSID}"                         \
                                                                        \
           --add item           wifi.speed     popup.wifi.control       \
           --set wifi.speed     icon=$SPEED_ICN                        \
                                script="$PLUGIN_DIR/wifi_click.sh"        \
                                update_freq=10                          \

sketchybar --set wifi.control \
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
  icon.color=0xffb16286
