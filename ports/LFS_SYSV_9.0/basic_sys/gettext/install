if [ -f gettext-0.20.1.tar.xz ];then
tar xf gettext-0.20.1.tar.xz
cd gettext-0.20.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.20.1
make $PORTS_JOBS
#make check
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
