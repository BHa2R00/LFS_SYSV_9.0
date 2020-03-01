if [ -f acl-2.2.53.tar.gz ];then
tar xf acl-2.2.53.tar.gz
cd acl-2.2.53
./configure --prefix=/usr         \
            --bindir=/bin         \
            --disable-static      \
            --libexecdir=/usr/lib \
            --docdir=/usr/share/doc/acl-2.2.53
make $PORTS_JOBS
make install
mv -v /usr/lib/libacl.so.* /lib
ln -sfv /lib/$(readlink /usr/lib/libacl.so) /usr/lib/libacl.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
