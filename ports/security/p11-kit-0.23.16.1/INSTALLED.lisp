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
"p11-kit" "trust" "update-ca-certificates"
"/lib/libp11-kit.so"
"/lib/p11-kit-proxy.so"
"/include/p11-kit-1"
"/lib/pkcs11"
"/libexec/p11-kit"
"/share/p11-kit"
;;
	 ))))
