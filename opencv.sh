sudo apt install -y libjpeg-dev libtiff5-dev libpng-dev
sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt install -y libdc1394-22-dev libxvidcore-dev libx264-dev
sudo apt install -y libxine2-dev libv4l-dev v4l-utils
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev

sudo apt install -y libgtk-3-dev
sudo apt install -y cmake


wget -O opencv-4.0.0.zip https://github.com/opencv/opencv/archive/4.0.0.zip
wget -O opencv_contrib-4.0.0.zip https://github.com/opencv/opencv_contrib/archive/4.0.0.zip

unzip opencv-4.0.0.zip
unzip opencv_contrib-4.0.0.zip

mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_WITH_DEBUG_INFO=OFF -D BUILD_EXAMPLES=ON -D BUILD_opencv_python3=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_ENABLE_NONFREE=ON -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.0.0/modules -D OPENCV_GENERATE_PKGCONFIG=ON -D WITH_TBB=ON ../opencv-4.0.0/
make -j8 //nproc 명령어를 통해 CPU 코어수 확인 후 명령어 실행

sudo make install
sudo ldconfig

