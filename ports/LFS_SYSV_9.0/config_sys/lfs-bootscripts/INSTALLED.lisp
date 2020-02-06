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
"/etc/init.d/checkfs"
"/etc/init.d/cleanfs"
"/etc/init.d/console"
;"/etc/init.d/functions"
"/etc/init.d/halt"
;"/etc/init.d/ifdown"
;"/etc/init.d/ifup"
"/etc/init.d/localnet"
"/etc/init.d/modules"
"/etc/init.d/mountfs"
"/etc/init.d/mountvirtfs"
"/etc/init.d/network"
"/etc/init.d/rc"
"/etc/init.d/reboot"
"/etc/init.d/sendsignals"
"/etc/init.d/setclock"
"/lib/services/ipv4-static"
"/etc/init.d/swap"
"/etc/init.d/sysctl"
"/etc/init.d/sysklogd"
"/etc/init.d/template"
"/etc/init.d/udev"
"/etc/init.d/udev_retry"
"/etc/rc.d"
"/etc/init.d"
"/etc/sysconfig"
"/lib/services"
"/lib/lsb"
;;
	 ))))
