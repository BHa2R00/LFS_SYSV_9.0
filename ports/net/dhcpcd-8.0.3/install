if [ -f dhcpcd-8.0.3.tar.xz ];then
tar xf dhcpcd-8.0.3.tar.xz
cd dhcpcd-8.0.3
./configure --libexecdir=/lib/dhcpcd \
            --dbdir=/var/lib/dhcpcd  &&
make $PORTS_JOBS
make install
make install-service-dhcpcd
#cat > /etc/sysconfig/ifconfig.eth0 << "EOF"
#ONBOOT="yes"
#IFACE="eth0"
#SERVICE="dhcpcd"
#DHCP_START="-b -q <insert appropriate start options here>"
#DHCP_STOP="-k <insert additional stop options here>"
#EOF

echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
