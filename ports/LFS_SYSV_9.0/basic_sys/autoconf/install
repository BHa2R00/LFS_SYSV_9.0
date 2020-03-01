if [ -f autoconf-2.69.tar.xz ];then
tar xf autoconf-2.69.tar.xz
cd autoconf-2.69
sed '361 s/{/\\{/' -i bin/autoscan.in
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
