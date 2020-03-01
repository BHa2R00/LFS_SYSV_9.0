if [ -f grep-3.3.tar.xz ];then
tar xf grep-3.3.tar.xz
cd grep-3.3
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
