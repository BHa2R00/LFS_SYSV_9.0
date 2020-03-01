if [ -f dejagnu-1.6.2.tar.gz ];then
tar xf dejagnu-1.6.2.tar.gz
cd dejagnu-1.6.2
./configure --prefix=/tools
make install
make check
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
