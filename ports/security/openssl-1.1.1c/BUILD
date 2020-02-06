if [ -f openssl-1.1.1c.tar.gz ];then
tar xf openssl-1.1.1c.tar.gz
cd openssl-1.1.1c
sed -i '/\} data/s/ =.*$/;\n    memset(\&data, 0, sizeof(data));/' \
  crypto/rand/rand_lib.c
./config --prefix=$PORTS_DEST         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
make $PORTS_JOBS
#make test
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v $PORTS_DEST/share/doc/openssl $PORTS_DEST/share/doc/openssl-1.1.1c
cp -vfr doc/* $PORTS_DEST/share/doc/openssl-1.1.1c
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
