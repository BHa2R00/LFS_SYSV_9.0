if [ -f wget-1.20.3.tar.gz ];then
tar xf wget-1.20.3.tar.gz
cd wget-1.20.3
./configure --prefix=$PORTS_DEST      \
            --sysconfdir=/etc  \
            --with-ssl=openssl &&
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
