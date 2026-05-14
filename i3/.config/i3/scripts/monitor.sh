#!/bin/bash
# ===========================================================
# Monitor layout — called from i3 config on login
# ===========================================================
# HDMI-1: 4K @ 60Hz (left)
# DP-1:   4K @ 240Hz (right) — HDR color fix applied
# ===========================================================

# Apply display layout
xrandr \
  --output HDMI-1 --mode 3840x2160 --rate 60 --pos 0x0 \
  --output DP-1   --mode 3840x2160 --rate 239.99 --pos 3840x0

# DP-2: Fix washed-out HDR colors
# - Colorspace Default = sRGB (X11 has no HDR tone-mapping, BT2020 causes washed colors)
# - max bpc 8 = standard 8-bit per channel (SDR content doesn't benefit from higher)
# - Broadcast RGB Full = full-range 0-255 (prevents crushed blacks from limited range)
xrandr --output DP-1 --set "Colorspace" "Default"
xrandr --output DP-1 --set "max bpc" 8
xrandr --output DP-1 --set "Broadcast RGB" "Full"

# HDMI-1: Also ensure proper color settings
xrandr --output HDMI-1 --set "Colorspace" "Default"
xrandr --output HDMI-1 --set "max bpc" 8
xrandr --output HDMI-1 --set "Broadcast RGB" "Full"
