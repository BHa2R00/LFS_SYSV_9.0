if [ -f tar-1.32.tar.xz ];then
tar xf tar-1.32.tar.xz
cd tar-1.32
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin
make $PORTS_JOBS
#make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.32
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
