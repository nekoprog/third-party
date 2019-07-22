

cd `dirname "$0"`
cd ..
PREFIX=`pwd`
cd src

if [ ! -d "zlib" ]  ; then
    git clone https://github.com/madler/zlib.git
fi
    
cd zlib
CFLAGS="-fPIC" ./configure --prefix=$PREFIX --static

make install

