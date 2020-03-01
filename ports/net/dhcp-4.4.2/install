if [ -f dhcp-4.4.2.tar.gz ];then
tar xf dhcp-4.4.2.tar.gz
cd dhcp-4.4.2
( export CFLAGS="$CFLAGS -Wall -fno-strict-aliasing                 \
        -D_PATH_DHCLIENT_SCRIPT='\"/sbin/dhclient-script\"'         \
        -D_PATH_DHCPD_CONF='\"/etc/dhcp/dhcpd.conf\"'               \
        -D_PATH_DHCLIENT_CONF='\"/etc/dhcp/dhclient.conf\"'"        &&

./configure --prefix=$PORTS_DEST                                           \
            --sysconfdir=/etc/dhcp                                  \
            --localstatedir=/var                                    \
            --with-srv-lease-file=/var/lib/dhcpd/dhcpd.leases       \
            --with-srv6-lease-file=/var/lib/dhcpd/dhcpd6.leases     \
            --with-cli-lease-file=/var/lib/dhclient/dhclient.leases \
            --with-cli6-lease-file=/var/lib/dhclient/dhclient6.leases
) &&
make -j1
make -C client install         &&
mv -v $PORTS_DEST/sbin/dhclient /sbin &&
install -v -m755 client/scripts/linux /sbin/dhclient-script
make -C server install
make install                   &&
mv -v $PORTS_DEST/sbin/dhclient /sbin &&
install -v -m755 client/scripts/linux /sbin/dhclient-script
install -vdm755 /etc/dhcp &&
cp -v dhclient.conf /etc/dhcp/
install -v -dm 755 /var/lib/dhclient
cp -v dhcpd.conf /etc/dhcp/
install -v -dm 755 /var/lib/dhcpd
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
