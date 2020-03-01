if [ -f bash-5.0.tar.gz ];then
tar xf bash-5.0.tar.gz
cd bash-5.0
./configure --prefix=$PORTS_DEST                    \
            --docdir=$PORTS_DEST/share/doc/bash-5.0 \
            --without-bash-malloc            \
            --with-installed-readline
make $PORTS_JOBS
chown -Rv nobody .
su nobody -s /bin/bash -c "PATH=$PATH HOME=/home make tests"
make install
mv -vf $PORTS_DEST/bin/bash /bin
exec /bin/bash --login +h
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
