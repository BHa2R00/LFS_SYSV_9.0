if [ -f expat-2.2.7.tar.xz ];then
tar xf expat-2.2.7.tar.xz
cd expat-2.2.7
sed -i 's|usr/bin/env |bin/|' run.sh.in
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.2.7
make $PORTS_JOBS
#make check
make install
install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.2.7
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
