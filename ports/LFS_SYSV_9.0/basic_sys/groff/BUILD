if [ -f groff-1.22.4.tar.gz ];then
tar xf groff-1.22.4.tar.gz
cd groff-1.22.4
PAGE=letter ./configure --prefix=/usr
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
