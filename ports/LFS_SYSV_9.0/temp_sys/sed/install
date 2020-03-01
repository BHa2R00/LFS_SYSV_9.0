if [ -f sed-4.7.tar.xz ];then
tar xf sed-4.7.tar.xz
cd sed-4.7
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
