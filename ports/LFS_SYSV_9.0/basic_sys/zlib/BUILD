if [ -f zlib-1.2.11.tar.xz ];then
tar xf zlib-1.2.11.tar.xz
cd zlib-1.2.11
./configure --prefix=/usr
make $PORTS_JOBS
#make check
make install
mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
