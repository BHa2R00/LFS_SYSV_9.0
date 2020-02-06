if [ -f mpfr-4.0.2.tar.xz ];then
tar xf mpfr-4.0.2.tar.xz
cd mpfr-4.0.2
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.0.2
make $PORTS_JOBS
make html
#make check
make install
make install-html
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
