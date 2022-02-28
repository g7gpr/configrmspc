#!/bin/bash
echo "Step 6 - Install OpenCV"

source ~/vRMS/bin/activate
sudo apt-get install -y python3-opencv
pip install --no-binary opencv-python opencv-python

cp install.sh ~
cp opencv4_install.sh ~
cd ~
install.sh

cd ~/source/RMS/Scripts
./GenerateDesktopLinks.sh

echo '' >> ~/.bashrc
echo 'source ~/vRMS/bin/activate' >> ~/.bashrc
echo 'cd ~/source/RMS' >> ~/.bashrc

