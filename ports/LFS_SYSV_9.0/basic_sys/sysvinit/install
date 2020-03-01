if [ -f sysvinit-2.95.tar.xz ]&&[ -f sysvinit-2.95-consolidated-1.patch ];then
tar xf sysvinit-2.95.tar.xz
cd sysvinit-2.95
patch -Np1 -i ../sysvinit-2.95-consolidated-1.patch
make $PORTS_JOBS
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
