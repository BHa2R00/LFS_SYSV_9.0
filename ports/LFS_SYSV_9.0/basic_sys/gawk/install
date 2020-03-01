if [ -f gawk-5.0.1.tar.xz ];then
tar xf gawk-5.0.1.tar.xz
cd gawk-5.0.1
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make $PORTS_JOBS
#make check
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
