if [ -f zlib-1.2.11.tar.xz ];then
tar xf zlib-1.2.11.tar.xz
cd zlib-1.2.11
./configure --prefix=$PORTS_DEST
make $PORTS_JOBS
#make check
make install
mv -v $PORTS_DEST/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink $PORTS_DEST/lib/libz.so) $PORTS_DEST/lib/libz.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
