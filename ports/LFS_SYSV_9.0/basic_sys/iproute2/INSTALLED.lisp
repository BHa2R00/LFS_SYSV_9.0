(eval(append '(and)
  (map 'list
       (lambda (elm)
	 ;(format t ">>> ~S	~S~%" elm
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))
	   (probe-file elm)
	   (directory elm)
	   )
	 ;)
	 )
       (list
;;
"/sbin/bridge"
"/sbin/ctstat"
"/sbin/genl"
"/sbin/ifcfg"
"/sbin/ifstat"
"/sbin/ip"
"/sbin/lnstat"
"/sbin/nstat"
"/sbin/routef"
"/sbin/routel"
"/sbin/rtacct"
"/sbin/rtmon"
"/sbin/rtpr"
"/sbin/rtstat"
"/sbin/ss"
"/etc/iproute2"
"/lib/tc"
;;
	 ))))
