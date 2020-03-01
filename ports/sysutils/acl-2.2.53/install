if [ -f acl-2.2.53.tar.gz ];then
tar xf acl-2.2.53.tar.gz
cd acl-2.2.53
./configure --prefix=$PORTS_DEST         \
            --bindir=/bin         \
            --disable-static      \
            --libexecdir=$PORTS_DEST/lib \
            --docdir=$PORTS_DEST/share/doc/acl-2.2.53
make $PORTS_JOBS
make install
mv -v $PORTS_DEST/lib/libacl.so.* /lib
ln -sfv /lib/$(readlink $PORTS_DEST/lib/libacl.so) $PORTS_DEST/lib/libacl.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
