
cvt 1680 1050 60
activemonitor=$(xrandr --listactivemonitors | rev | cut -f1 --d ' ' | rev | tail -n1)
echo "$activemonitor"
# Modeline "1280x960_60.00"  101.25  1280 1360 1488 1696  960 963 967 996 -hsync +vsync
# 1680x1050 59.95 Hz (CVT 1.76MA) hsync: 65.29 kHz; pclk: 146.25 MHz
# Modeline "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
xrandr --newmode "1280x960_60.00"  101.25  1280 1360 1488 1696 960 963 967 996 -hsync +vsync
xrandr --addmode $activemonitor "1280x960_60.00"
xrandr --output $activemonitor --mode 1280x960_60.00
sleep 10
killall conky
conky &
