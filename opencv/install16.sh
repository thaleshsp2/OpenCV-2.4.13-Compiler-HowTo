# source: http://docs.opencv.org/2.4/doc/tutorials/introduction/linux_install/linux_install.html

# install dependencies
#sudo apt-get update
#sudo apt-get install -y build-essential checkinstall cmake git libopencv-dev libgtk2.0-dev pkg-config libavcodec-dev libpng12-dev libavformat-dev libswscale-dev yasm libxine2 libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libqt4-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils
sudo apt-get install -y build-essential checkinstall cmake git libopencv-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev yasm libxine2 libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libqt4-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils


# optional packages
sudo apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff5-dev libjasper-dev libdc1394-22-dev

# download opencv-2.4.13
if [ -e opencv-2.4.13.zip ]
then
	echo "Found: opencv-2.4.13.zip"
else
	echo "Not found: opencv-2.4.13.zip"
	echo "Downloading: opencv-2.4.13.zip"
	wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.13/opencv-2.4.13.zip
	echo "Downloaded: opencv-2.4.13.zip"
fi

unzip -n opencv-2.4.13.zip && cd opencv-2.4.13
mkdir -p release && cd release

cmake -G "Unix Makefiles" -D CMAKE_CXX_COMPILER=/usr/bin/g++ -D CMAKE_C_COMPILER=/usr/bin/gcc -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=./install -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=OFF -D INSTALL_PYTHON_EXAMPLES=OFF -D BUILD_EXAMPLES=OFF -D WITH_QT=OFF -DWITH_OPENGL=ON -D BUILD_FAT_JAVA_LIB=ON -D INSTALL_TO_MANGLED_PATHS=ON -D INSTALL_CREATE_DISTRIB=ON -D INSTALL_TESTS=OFF -D ENABLE_FAST_MATH=ON -D WITH_IMAGEIO=ON -D BUILD_SHARED_LIBS=ON -D WITH_GSTREAMER=ON ..
make all -j1
#sudo make install && sudo checkinstall
sudo make install

