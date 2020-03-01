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
"nettle-hash" "nettle-lfib-stream" "nettle-pbkdf2" "pkcs1-conv" "sexp-conv"
"/lib/libhogweed.so"
"/lib/libnettle.so"
"/include/nettle"
"/share/doc/nettle-3.5.1"
;;
	 ))))
