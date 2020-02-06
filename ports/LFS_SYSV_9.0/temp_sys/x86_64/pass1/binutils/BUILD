if [ -f binutils-2.32.tar.xz ];then
mkdir -pv build
tar xf binutils-2.32.tar.xz
cd build
../binutils-2.32/configure \
 --prefix=/tools \
 --with-sysroot=$PORTS_DEST \
 --with-lib-path=/tools/lib \
 --target=$PORTS_TGT \
 --disable-nls \
 --disable-werror
make $PORTS_JOBS
case $(uname -m) in
 x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
