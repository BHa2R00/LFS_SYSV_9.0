if [ -f readline-8.0.tar.gz ];then
tar xf readline-8.0.tar.gz
cd readline-8.0
sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install
./configure --prefix=$PORTS_DEST    \
            --disable-static \
            --docdir=$PORTS_DEST/share/doc/readline-8.0
make $PORTS_JOBS SHLIB_LIBS="-L/tools/lib -lncursesw"
make SHLIB_LIBS="-L/tools/lib -lncursesw" install
mv -v $PORTS_DEST/lib/lib{readline,history}.so.* /lib
chmod -v u+w /lib/lib{readline,history}.so.*
ln -sfv /lib/$(readlink $PORTS_DEST/lib/libreadline.so) $PORTS_DEST/lib/libreadline.so
ln -sfv /lib/$(readlink $PORTS_DEST/lib/libhistory.so ) $PORTS_DEST/lib/libhistory.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
