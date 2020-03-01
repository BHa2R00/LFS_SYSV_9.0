if [ -f bison-3.4.1.tar.xz ];then
tar xf bison-3.4.1.tar.xz
cd bison-3.4.1
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
