if [ -f XML-Parser-2.44.tar.gz ];then
tar xf XML-Parser-2.44.tar.gz
cd XML-Parser-2.44
perl Makefile.PL
make $PORTS_JOBS
#make test
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
