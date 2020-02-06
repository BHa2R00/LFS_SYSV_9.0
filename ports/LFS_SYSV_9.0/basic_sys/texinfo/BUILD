if [ -f texinfo-6.6.tar.xz ];then
tar xf texinfo-6.6.tar.xz
cd texinfo-6.6
./configure --prefix=/usr --disable-static
make $PORTS_JOBS
#make check
make install
make TEXMF=/usr/share/texmf install-tex
#pushd /usr/share/info
#rm -v dir
#for f in *
#  do install-info $f dir 2>/dev/null
#done
#popd
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
