if [ -f diffutils-3.7.tar.xz ];then
tar xf diffutils-3.7.tar.xz
cd diffutils-3.7
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
