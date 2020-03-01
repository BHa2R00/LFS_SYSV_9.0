if [ -f tcsh-6.21.00.tar.gz ];then
tar xf tcsh-6.21.00.tar.gz
cd tcsh-6.21.00
sed -i 's|SVID_SOURCE|DEFAULT_SOURCE|g' config/linux  &&
sed -i 's|BSD_SOURCE|DEFAULT_SOURCE|g'  config/linux
./configure --prefix=$PORTS_DEST --bindir=/bin
make $PORTS_JOBS
sh ./tcsh.man2html
make install install.man
ln -v -sf tcsh   /bin/csh
ln -v -sf tcsh.1 $PORTS_DEST/share/man/man1/csh.1
install -v -m755 -d          $PORTS_DEST/share/doc/tcsh-6.21.00/html
install -v -m644 tcsh.html/* $PORTS_DEST/share/doc/tcsh-6.21.00/html
install -v -m644 FAQ         $PORTS_DEST/share/doc/tcsh-6.21.00
#cp -v cshrc ~/.cshrc
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
