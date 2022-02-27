#!/bin/bash

echo "Step 4 - Pip, python and venv"

sudo pip3 install --upgrade pip
sudo pip3 install virtualenv
cd ~
virtualenv vRMS
source ~/vRMS/bin/activate



