if [ -f bzip2-1.0.8.tar.gz ];then
tar xf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8
make $PORTS_JOBS
make PREFIX=/tools install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
