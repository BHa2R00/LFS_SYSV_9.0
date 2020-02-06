(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))
	   (probe-file elm)
	   (directory elm)
	   ))
       (list
;;
"/bin/dnsdomainname"
"/bin/ftp"
"/sbin/ifconfig"
"/bin/hostname"
"/bin/ping"
"/bin/ping6"
"/bin/talk"
"/bin/telnet"
"/bin/tftp"
"/bin/traceroute"
;;
	 ))))
