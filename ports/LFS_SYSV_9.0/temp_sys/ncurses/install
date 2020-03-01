if [ -f ncurses-6.1.tar.gz ];then
tar xf ncurses-6.1.tar.gz
cd ncurses-6.1
sed -i s/mawk// configure
./configure --prefix=/tools \
            --with-shared   \
            --without-debug \
            --without-ada   \
            --enable-widec  \
            --enable-overwrite
make $PORTS_JOBS
make install
ln -s libncursesw.so /tools/lib/libncurses.so
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
