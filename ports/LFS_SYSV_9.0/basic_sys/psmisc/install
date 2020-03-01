if [ -f psmisc-23.2.tar.xz ];then
tar xf psmisc-23.2.tar.xz
cd psmisc-23.2
./configure --prefix=/usr
make $PORTS_JOBS
make install
mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
