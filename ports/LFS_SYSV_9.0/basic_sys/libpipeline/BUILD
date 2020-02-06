if [ -f libpipeline-1.5.1.tar.gz ];then
tar xf libpipeline-1.5.1.tar.gz
cd libpipeline-1.5.1
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
