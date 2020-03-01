if [ -f iproute2-5.2.0.tar.xz ];then
tar xf iproute2-5.2.0.tar.xz
cd iproute2-5.2.0
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
sed -i 's/.m_ipt.o//' tc/Makefile
make $PORTS_JOBS
make DOCDIR=/usr/share/doc/iproute2-5.2.0 install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
