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
"/bin/free"
"/bin/pgrep"
"/bin/pidof"
"/bin/pkill"
"/bin/pmap"
"/bin/ps"
"/bin/pwdx"
"/bin/slabtop"
"/sbin/sysctl"
"/bin/tload"
"/bin/top"
"/bin/uptime"
"/bin/vmstat"
"/bin/w"
"/bin/watch"
"/lib/libprocps.so"
"/include/proc"
;;
	 ))))
