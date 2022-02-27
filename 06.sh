#!/bin/bash
echo "Step 6 - Install OpenCV"

source ~/vRMS/bin/activate
sudo apt-get install -y python3-opencv
pip install opencv-python

cd ~/source/RMS
python setup.py install

cd ~/source/RMS/Scripts
./GenerateDesktopLinks.sh

echo '' >> ~/.bashrc
echo 'source ~/vRMS/bin/activate' >> ~/.bashrc
echo 'cd ~/source/RMS' >> ~/.bashrc

