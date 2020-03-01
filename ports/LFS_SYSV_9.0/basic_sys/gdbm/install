if [ -f gdbm-1.18.1.tar.gz ];then
tar xf gdbm-1.18.1.tar.gz
cd gdbm-1.18.1
./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat
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
