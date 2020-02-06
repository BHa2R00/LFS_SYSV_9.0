if [ -f xz-5.2.4.tar.xz ];then
tar xf xz-5.2.4.tar.xz
cd xz-5.2.4
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
