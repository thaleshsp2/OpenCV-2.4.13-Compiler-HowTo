# OpenCV-2.4.13-Compiler-HowTo


1) Clone this repository (git clone https://github.com/thaleshsp2/OpenCV-2.4.13-Compiler-HowTo)
2) Downgrade your GCC version to 4.8 using all the comands in the GCC-4.8.txt (ignore errors)
3) python compileOpencv_Ubuntu1X.py
(If you get problems with the compilation like an error with C++ version, add "set (CMAKE_CXX_STANDARD 11)" at the top of opencv-2.4.13/CMakeLists.txt)

OPTIONAL:
To use the OpenCV for the naoqi SDK:
1) ./packageOpencv.sh
2) cd cv
3) cp -r include/ lib/ ../path/to/your/naoqi/sdk
This will replace the opencv files in your sdk to solve some problems with versions.




