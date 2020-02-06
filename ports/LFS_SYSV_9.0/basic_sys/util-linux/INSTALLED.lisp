(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (let ((r
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (probe-file (string+ *dest-dir* "/bin/" elm))
	   (probe-file (string+ *dest-dir* "/sbin/" elm))
	   (directory (string+ *dest-dir* elm))
	   (probe-file elm)
	   (probe-file (string+ "/bin/" elm))
	   (probe-file (string+ "/sbin/" elm))
	   (directory elm)
	   )))
	 (format t ";;CHECK_EXIST	~S	~S~%" elm r)
	 r)
	 )
       (list
;;
"addpart"
"agetty"
"blkdiscard"
"blkid"
"blkzone"
"blockdev"
"cal"
"cfdisk"
"chcpu"
"chmem"
"choom"
"delpart"
"dmesg"
"eject"
"fdisk"
"findfs"
"fsck"
"fsfreeze"
"hexdump"
"hwclock"
"kill"
"logger"
"lsblk"
"lscpu"
"lsipc"
"lslocks"
"lslogins"
"lsmem"
"lsns"
"mesg"
"mkfs"
"mkswap"
"more"
"mount"
"mountpoint"
"raw"
"rename"
"resizepart"
"rev"
"rfkill"
"script"
"setarch"
"setsid"
"setterm"
"sfdisk"
"sulogin"
"swaplabel"
"swapoff"
"swapon"
"umount"
"uuidd"
"uuidgen"
"uuidparse"
"wall"
"wdctl"
"whereis"
"zramctl"
"/lib/libblkid.so"
"/lib/libfdisk.so"
"/lib/libmount.so"
"/lib/libsmartcols.so"
"/lib/libuuid.so"
"/include/blkid"
"/include/libfdisk"
"/include/libmount"
"/include/libsmartcols"
"/include/uuid"
"/var/lib/hwclock"
;;
	 ))))
