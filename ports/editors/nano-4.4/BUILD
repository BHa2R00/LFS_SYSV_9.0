if [ -f nano-4.4.tar.xz ];then
tar xf nano-4.4.tar.xz
cd nano-4.4
./configure --prefix=$PORTS_DEST     \
            --sysconfdir=/etc \
            --enable-utf8     \
            --docdir=$PORTS_DEST/share/doc/nano-4.4
make $PORTS_JOBS
make install
install -v -m644 doc/{nano.html,sample.nanorc} $PORTS_DEST/share/doc/nano-4.4
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
