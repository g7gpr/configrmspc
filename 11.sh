#!/bin/bash
echo "Step 11 - Configure Anydesk"

mkdir ~/configurermspctmp
cd ~/configurermspctmp
wget https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb
sudo apt-get install libegl1-mesa -y
sudo dpkg --configure -a
sudo dpkg -i *
sudo apt-get -f install -y
rm *
cd ..
rmdir ~/configurermspctmp
