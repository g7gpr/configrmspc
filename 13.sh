#!/bin/bash
echo "Step 13 - Setup desktop"

mv /home/pi/.config/pcmanfm/LXDE/desktop-items-0.conf /home/pi/.config/pcmanfm/LXDE/desktop-items-0.conf.old
cp desktop-items-0.conf /home/pi/.config/pcmanfm/LXDE/desktop-items-0.conf
cp black_sun_inner_corona.jpg /home/pi/Pictures/
