if [ -f glibc-2.30.tar.xz ];then
mkdir -pv build
tar xf glibc-2.30.tar.xz
cd build
../glibc-2.30/configure \
 --prefix=/tools \
 --host=$PORTS_TGT \
 --build=$(../glibc-2.30/scripts/config.guess) \
 --enable-kernel=3.2 \
 --with-headers=/tools/include
make $PORTS_JOBS
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
