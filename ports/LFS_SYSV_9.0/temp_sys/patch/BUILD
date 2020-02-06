if [ -f patch-2.7.6.tar.xz ];then
tar xf patch-2.7.6.tar.xz
cd patch-2.7.6
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
