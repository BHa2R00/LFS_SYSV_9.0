if [ -f libtool-2.4.6.tar.xz ];then
tar xf libtool-2.4.6.tar.xz
cd libtool-2.4.6
./configure --prefix=/usr
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
