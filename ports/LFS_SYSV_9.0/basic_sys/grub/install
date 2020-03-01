if [ -f grub-2.04.tar.xz ];then
tar xf grub-2.04.tar.xz
cd grub-2.04
./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror
make $PORTS_JOBS
make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions
echo ''
echo 'NIL'
echo 'NIL' > ./R
else
echo ''
echo 'BUILD-ERROR'
echo 'BUILD-ERROR' > ./R
fi
