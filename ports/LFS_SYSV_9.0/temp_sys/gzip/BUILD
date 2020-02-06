if [ -f gzip-1.10.tar.xz ];then
tar xf gzip-1.10.tar.xz
cd gzip-1.10
./configure --prefix=/tools
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
