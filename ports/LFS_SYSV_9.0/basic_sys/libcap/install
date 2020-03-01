if [ -f libcap-2.27.tar.xz ];then
tar xf libcap-2.27.tar.xz
cd libcap-2.27
sed -i '/install.*STALIBNAME/d' libcap/Makefile
make $PORTS_JOBS
make RAISE_SETFCAP=no lib=lib prefix=/usr install
chmod -v 755 /usr/lib/libcap.so.2.27
mv -v /usr/lib/libcap.so.* /lib
ln -sfv /lib/$(readlink /usr/lib/libcap.so) /usr/lib/libcap.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
