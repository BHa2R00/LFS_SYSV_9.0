if [ -f linux-5.2.8.tar.xz ];then
tar xf linux-5.2.8.tar.xz
cd linux-5.2.8
make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
