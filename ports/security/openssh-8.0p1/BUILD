if [ -f openssh-8.0p1.tar.gz ];then
tar xf openssh-8.0p1.tar.gz
cd openssh-8.0p1
install  -v -m700 -d /var/lib/sshd &&
chown    -v root:sys /var/lib/sshd &&
groupadd -g 50 sshd        &&
useradd  -c 'sshd PrivSep' \
         -d /var/lib/sshd  \
         -g sshd           \
         -s /bin/false     \
         -u 50 sshd
./configure --prefix=$PORTS_DEST                     \
            --sysconfdir=/etc/ssh             \
            --with-md5-passwords              \
            --with-privsep-path=/var/lib/sshd &&
make $PORTS_JOBS
make install &&
install -v -m755    contrib/ssh-copy-id $PORTS_DEST/bin     &&
install -v -m644    contrib/ssh-copy-id.1 \
                    $PORTS_DEST/share/man/man1              &&
install -v -m755 -d $PORTS_DEST/share/doc/openssh-8.0p1     &&
install -v -m644    INSTALL LICENCE OVERVIEW README* \
                    $PORTS_DEST/share/doc/openssh-8.0p1
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
