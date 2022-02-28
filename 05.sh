#!/bin/bash
echo "Step 5 - Install needed python packages"

source ~/vRMS/bin/activate
pip install -U pip setuptools
pip install numpy
pip install Pillow
pip install gitpython scipy cython pyephem astropy paramiko
pip install matplotlib
pip install imreg_dft
pip install configparser
pip install imageio
pip install pyfits
pip install pyqtgraph
pip install PyQt5
cd ~/configrmspc
