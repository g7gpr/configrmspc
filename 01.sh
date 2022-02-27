#!/bin/bash
echo "Step 1 - Preliminaries - enable passwordless shutdown"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install curl git -y
sudo timedatectl set-timezone UTC
sudo cp pi /etc/sudoers.d/


