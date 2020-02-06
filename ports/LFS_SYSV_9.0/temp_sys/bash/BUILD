if [ -f bash-5.0.tar.gz ];then
tar xf bash-5.0.tar.gz
cd bash-5.0
./configure --prefix=/tools --without-bash-malloc
make $PORTS_JOBS
#make tests
make install
ln -sv bash /tools/bin/sh
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
