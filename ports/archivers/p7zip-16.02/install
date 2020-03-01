if [ -f p7zip_16.02_src_all.tar.bz2 ];then
tar xf p7zip_16.02_src_all.tar.bz2
cd p7zip_16.02
make $PORTS_JOBS all3
make DEST_HOME=$PORTS_DEST \
     DEST_MAN=$PORTS_DEST/share/man \
     DEST_SHARE_DOC=$PORTS_DEST/share/doc/p7zip-16.02 install
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
