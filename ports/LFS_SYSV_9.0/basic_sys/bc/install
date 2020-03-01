if [ -f bc-2.1.3.tar.gz ];then
tar xf bc-2.1.3.tar.gz
cd bc-2.1.3
PREFIX=/usr CC=gcc CFLAGS="-std=c99" ./configure.sh -G -O3
make $PORTS_JOBS
#make test
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
