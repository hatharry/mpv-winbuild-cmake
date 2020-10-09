set -e
mkdir build64
cd build64
cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..
ninja gcc
ninja mpv
cd ..

mkdir build32
cd build32
cmake -DTARGET_ARCH=i686-w64-mingw32 -G Ninja ..
ninja gcc
ninja mpv
cd ..