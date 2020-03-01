if [ -f check-0.12.0.tar.gz ];then
tar xf check-0.12.0.tar.gz
cd check-0.12.0
./configure --prefix=/usr
make $PORTS_JOBS
#make check
make docdir=/usr/share/doc/check-0.12.0 install
sed -i '1 s/tools/usr/' /usr/bin/checkmk
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
