if [ -f Python-3.7.4.tar.xz ];then
tar xf Python-3.7.4.tar.xz
cd Python-3.7.4
sed -i '/def add_multiarch_paths/a \        return' setup.py
./configure --prefix=/tools --without-ensurepip
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
