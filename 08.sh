#!/bin/bash
echo "Step 8 - Install CMN_binViewer"

sudo apt-get install -y python-wxgtk3.0
cd ~/source
git clone https://github.com/CroatianMeteorNetwork/cmn_binviewer.git
ln -sf /home/pi/source/RMS/Scripts/CMNbinViewer_env.sh /home/pi/Desktop/CMNbinViewer.sh
cd ~/configrmspc

