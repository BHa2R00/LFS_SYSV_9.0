if [ -f meson-0.51.1.tar.gz ];then
tar xf meson-0.51.1.tar.gz
cd meson-0.51.1
python3 setup.py build
python3 setup.py install --root=dest
cp -rv dest/* /
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
