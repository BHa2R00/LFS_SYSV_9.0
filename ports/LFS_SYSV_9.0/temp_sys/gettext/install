if [ -f gettext-0.20.1.tar.xz ];then
tar xf gettext-0.20.1.tar.xz
cd gettext-0.20.1
./configure --disable-shared
make $PORTS_JOBS
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /tools/bin
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
