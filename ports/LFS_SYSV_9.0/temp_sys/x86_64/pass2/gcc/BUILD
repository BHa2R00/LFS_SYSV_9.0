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
cat gcc/limitx.h gcc/glimits.h gcc/limity.h > \
  `dirname $($PORTS_TGT-gcc -print-libgcc-file-name)`/include-fixed/limits.h
for file in gcc/config/{linux,i386/linux{,64}}.h
do
  cp -uv $file{,.orig}
  sed -e 's@/lib\(64\)\?\(32\)\?/ld@/tools&@g' \
      -e 's@/usr@/tools@g' $file.orig > $file
  echo '
#undef STANDARD_STARTFILE_PREFIX_1
#undef STANDARD_STARTFILE_PREFIX_2
#define STANDARD_STARTFILE_PREFIX_1 "/tools/lib/"
#define STANDARD_STARTFILE_PREFIX_2 ""' >> $file
  touch $file.orig
done
case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac
cd ../build
CC=$PORTS_TGT-gcc                                    \
CXX=$PORTS_TGT-g++                                   \
AR=$PORTS_TGT-ar                                     \
RANLIB=$PORTS_TGT-ranlib                             \
../gcc-9.2.0/configure \
    --prefix=/tools                                \
    --with-local-prefix=/tools                     \
    --with-native-system-header-dir=/tools/include \
    --enable-languages=c,c++                       \
    --disable-libstdcxx-pch                        \
    --disable-multilib                             \
    --disable-bootstrap                            \
    --disable-libgomp
make $PORTS_JOBS
make install
ln -sv gcc /tools/bin/cc
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
