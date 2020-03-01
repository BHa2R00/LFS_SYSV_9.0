if [ -f elfutils-0.177.tar.bz2 ];then
tar xf elfutils-0.177.tar.bz2
cd elfutils-0.177
./configure --prefix=/usr
make $PORTS_JOBS
#make check
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
