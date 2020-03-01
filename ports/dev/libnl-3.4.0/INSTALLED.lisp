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
"genl-ctrl-list" "idiag-socket-details" "nl-class-add" "nl-class-delete"
"/lib/libnl-3.so"
"/lib/libnl-cli-3.so"
"/lib/libnl-genl-3.so"
"/lib/libnl-idiag-3.so"
"/lib/libnl-nf-3.so"
"/lib/libnl-route-3.so"
"/lib/libnl-xfrm-3.so"
"/lib/libnl/"
"/etc/libnl"
"/include/libnl3"
;;
	 ))))
