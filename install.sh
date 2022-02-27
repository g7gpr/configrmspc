#!/usr/bin/bash
cd ~/source/RMS
cp  ~/opencv4_install.sh .
./opencv4_install.sh ~/vRMS
cd ~/source
sudo apt install -y gstreamer1.0*
sudo apt install -y gstreamer1.0-python3-dbg-plugin-loader
sudo apt install -y gstreamer1.0-python3-plugin-loader
sudo apt install -y ubuntu-restricted-extras
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev


git clone https://github.com/opencv/opencv.git
cd opencv/
git checkout 4.1.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D INSTALL_C_EXAMPLES=OFF \
-D PYTHON_EXECUTABLE=$(which python3) \
-D BUILD_opencv_python2=OFF \
-D CMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
-D PYTHON3_EXECUTABLE=$(which python3) \
-D PYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
-D PYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") \
-D WITH_GSTREAMER=ON \
-D BUILD_EXAMPLES=ON ..
-D WITH_V4L=ON \
-D WITH_LIBV4L=ON
sudo make -j$(nproc)
sudo make install
sudo ldconfig

cd ~/source/RMS
python setup.py install
sudo apt install -y gstreamer1.0-plugins-good python3-pyqt5
