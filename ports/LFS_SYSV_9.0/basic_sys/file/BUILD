if [ -f file-5.37.tar.gz ];then
tar xf file-5.37.tar.gz
cd file-5.37
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
