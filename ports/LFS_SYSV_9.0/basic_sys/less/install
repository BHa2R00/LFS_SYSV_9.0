if [ -f less-551.tar.gz ];then
tar xf less-551.tar.gz
cd less-551
./configure --prefix=/usr --sysconfdir=/etc
make $PORTS_JOBS
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
