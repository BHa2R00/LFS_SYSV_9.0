if [ -f sysklogd-1.5.1.tar.gz ];then
tar xf sysklogd-1.5.1.tar.gz
cd sysklogd-1.5.1
sed -i '/Error loading kernel symbols/{n;n;d}' ksym_mod.c
sed -i 's/union wait/int/' syslogd.c
make $PORTS_JOBS
make BINDIR=/sbin install
cp -v ../syslog.conf /etc/
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
