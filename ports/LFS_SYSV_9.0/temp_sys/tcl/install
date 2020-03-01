if [ -f tcl8.6.9-src.tar.gz ];then
tar xf tcl8.6.9-src.tar.gz
cd tcl8.6.9
cd unix
./configure --prefix=/tools
make $PORTS_JOBS
TZ=UTC make test
make install
chmod -v u+w /tools/lib/libtcl8.6.so
make install-private-headers
ln -sv tclsh8.6 /tools/bin/tclsh
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
