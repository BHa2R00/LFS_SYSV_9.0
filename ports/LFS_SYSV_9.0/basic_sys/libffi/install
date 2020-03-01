if [ -f libffi-3.2.1.tar.gz ];then
tar xf libffi-3.2.1.tar.gz
cd libffi-3.2.1
sed -e '/^includesdir/ s/$(libdir).*$/$(includedir)/' \
    -i include/Makefile.in
sed -e '/^includedir/ s/=.*$/=@includedir@/' \
    -e 's/^Cflags: -I${includedir}/Cflags:/' \
    -i libffi.pc.in
./configure --prefix=/usr --disable-static --with-gcc-arch=native
make $PORTS_JOBS
#make check
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
