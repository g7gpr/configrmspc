#!/bin/bash

echo "Step 3 - Installing libraries"

sudo apt-get install -y cmake git mplayer python3 python3-dev 
sudo apt-get install -y python3-tk python3-pip libblas-dev 
sudo apt-get install -y libatlas-base-dev liblapack-dev at-spi2-core 
sudo apt-get install -y libopencv-dev python-imaging-tk libffi-dev 
sudo apt-get install -y libssl-dev socat ntp libxml2-dev libxslt-dev 
sudo apt-get install -y imagemagick ffmpeg qt5-qmake

