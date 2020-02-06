if [ -f sbcl-2.0.1-source.tar.bz2 ];then
tar xf sbcl-2.0.1-source.tar.bz2
cd sbcl-2.0.1
./clean.sh
./make.sh --prefix=/tools
SBCL_HOME=/tools/lib/sbcl \
INSTALL_ROOT=/tools \
./install.sh
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
