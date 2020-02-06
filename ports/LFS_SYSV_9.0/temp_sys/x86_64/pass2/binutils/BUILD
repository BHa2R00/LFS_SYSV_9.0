if [ -f binutils-2.32.tar.xz ];then
mkdir -pv build
tar xf binutils-2.32.tar.xz
cd build
CC=$PORTS_TGT-gcc                \
AR=$PORTS_TGT-ar                 \
RANLIB=$PORTS_TGT-ranlib         \
../binutils-2.32/configure                   \
    --prefix=/tools            \
    --disable-nls              \
    --disable-werror           \
    --with-lib-path=/tools/lib \
    --with-sysroot
make $PORTS_JOBS
make install
make -C ld clean
make -C ld LIB_PATH=/usr/lib:/lib
cp -v ld/ld-new /tools/bin
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
