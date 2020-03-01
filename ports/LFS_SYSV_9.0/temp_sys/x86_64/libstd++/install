if [ -f gcc-9.2.0.tar.xz ]&&[ -f mpfr-4.0.2.tar.xz ]&&[ -f gmp-6.1.2.tar.xz ]&&[ -f mpc-1.1.0.tar.gz ];then
tar xf gcc-9.2.0.tar.xz
tar xf mpfr-4.0.2.tar.xz
tar xf gmp-6.1.2.tar.xz
tar xf mpc-1.1.0.tar.gz
mkdir build
cd gcc-9.2.0
mv -v ../mpfr-4.0.2 mpfr
mv -v ../gmp-6.1.2 gmp
mv -v ../mpc-1.1.0 mpc
cd ../build
../gcc-9.2.0/libstdc++-v3/configure \
    --host=$PORTS_TGT                 \
    --prefix=/tools                 \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$PORTS_TGT/include/c++/9.2.0
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
