if [ -f bison-3.4.1.tar.xz ];then
tar xf bison-3.4.1.tar.xz
cd bison-3.4.1
sed -i '6855 s/mv/cp/' Makefile.in
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.4.1
make -j1
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
