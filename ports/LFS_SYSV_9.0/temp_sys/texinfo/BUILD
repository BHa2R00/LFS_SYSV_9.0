if [ -f texinfo-6.6.tar.xz ];then
tar xf texinfo-6.6.tar.xz
cd texinfo-6.6
./configure --prefix=/tools
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
