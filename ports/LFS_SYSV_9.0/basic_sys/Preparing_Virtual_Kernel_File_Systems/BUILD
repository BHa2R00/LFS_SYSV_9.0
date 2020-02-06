mkdir -pv $PORTS_DEST/{dev,proc,sys,run}
mknod -m 600 $PORTS_DEST/dev/console c 5 1
mknod -m 666 $PORTS_DEST/dev/null c 1 3
mount -v --bind /dev $PORTS_DEST/dev
mount -vt devpts devpts $PORTS_DEST/dev/pts -o gid=5,mode=620
mount -vt proc proc $PORTS_DEST/proc
mount -vt sysfs sysfs $PORTS_DEST/sys
mount -vt tmpfs tmpfs $PORTS_DEST/run
if [ -h $PORTS_DEST/dev/shm ]; then
  mkdir -pv $PORTS_DEST/$(readlink $PORTS_DEST/dev/shm)
fi
echo ''
echo 'NIL'
echo 'NIL' > ./R
