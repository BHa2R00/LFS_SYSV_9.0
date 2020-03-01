if [ -f coreutils-8.31.tar.xz ];then
tar xf coreutils-8.31.tar.xz
cd coreutils-8.31
FORCE_UNSAFE_CONFIGURE=1 \
./configure --prefix=/tools --enable-install-program=hostname
make $PORTS_JOBS
#make RUN_EXPENSIVE_TESTS=yes check
make install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
