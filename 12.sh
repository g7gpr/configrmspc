#!/bin/bash
echo "Step 12 - Conky"
sudo apt-get install -y conky p7zip imagemagick rsync
sudo apt-get install -y libgee-0.8-2
wget --no-check-certificate https://github.com/teejee2008/conky-manager/releases/download/v2.4/conky-manager-v2.4-amd64.run
chmod +x *.run
sudo ./conky-manager-v2.4-amd64.run
sudo cp conky.conf /etc/conky
sudo cp .conkyrc ~
sudo cp conky_no_x11.conf /etc/conky
