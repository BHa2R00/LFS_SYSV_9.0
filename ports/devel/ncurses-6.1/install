if [ -f ncurses-6.1.tar.gz ];then
tar xf ncurses-6.1.tar.gz
cd ncurses-6.1
sed -i '/LIBTOOL_INSTALL/d' c++/Makefile.in
./configure --prefix=$PORTS_DEST           \
            --mandir=$PORTS_DEST/share/man \
            --with-shared           \
            --without-debug         \
            --without-normal        \
            --enable-pc-files       \
            --enable-widec
make $PORTS_JOBS
make install
mv -v $PORTS_DEST/lib/libncursesw.so.6* /lib
ln -sfv /lib/$(readlink $PORTS_DEST/lib/libncursesw.so) $PORTS_DEST/lib/libncursesw.so
for lib in ncurses form panel menu ; do
    rm -vf                    $PORTS_DEST/lib/lib${lib}.so
    echo "INPUT(-l${lib}w)" > $PORTS_DEST/lib/lib${lib}.so
    ln -sfv ${lib}w.pc        $PORTS_DEST/lib/pkgconfig/${lib}.pc
done
rm -vf                     $PORTS_DEST/lib/libcursesw.so
echo "INPUT(-lncursesw)" > $PORTS_DEST/lib/libcursesw.so
ln -sfv libncurses.so      $PORTS_DEST/lib/libcurses.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
