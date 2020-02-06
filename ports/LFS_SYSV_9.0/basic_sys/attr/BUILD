if [ -f attr-2.4.48.tar.gz ];then
tar xf attr-2.4.48.tar.gz
cd attr-2.4.48
./configure --prefix=/usr     \
            --bindir=/bin     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.4.48
make $PORTS_JOBS
#make check
make install
mv -v /usr/lib/libattr.so.* /lib
ln -sfv /lib/$(readlink /usr/lib/libattr.so) /usr/lib/libattr.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
