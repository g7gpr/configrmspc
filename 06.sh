#!/bin/bash
echo "Step 6 - Install OpenCV"

source ~/vRMS/bin/activate

cp install.sh ~
cp opencv4_install.sh ~
cd ~
./install.sh
sudo ln -s /usr/lib/x86_64-linux-gnu/libxcb-util.so.0 /usr/lib/x86_64-linux-gnu/libxcb-util.so.1
#To fix library
cd ~/source/RMS/Scripts
./GenerateDesktopLinks.sh

echo '' >> ~/.bashrc
echo 'source ~/vRMS/bin/activate' >> ~/.bashrc
echo 'cd ~/source/RMS' >> ~/.bashrc
cd ~/configrmspc
