if [ -f mpc-1.1.0.tar.gz ];then
tar xf mpc-1.1.0.tar.gz
cd mpc-1.1.0
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.1.0
make $PORTS_JOBS
make html
#make check
make install
make install-html
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
