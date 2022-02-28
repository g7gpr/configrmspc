#!/bin/bash
echo "Step 9 - On startup set resolution and run RMS"

mv /home/pi/.config/lxsession/LXDE/autostart /home/pi/.config/lxsession/LXDE/autostart.old
cp autostart /home/pi/.config/lxsession/LXDE
cp setres.sh /home/pi/setres.sh
cd ~/configrmspc
