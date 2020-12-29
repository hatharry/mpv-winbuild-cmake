mkdir build-$1
cd build-$1
cmake -DTARGET_ARCH=$1-w64-mingw32 -G Ninja ..
ninja gcc
ninja mpv
cd ..
