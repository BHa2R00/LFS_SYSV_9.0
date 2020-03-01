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
"certtool" "danetool" "gnutls-cli" "gnutls-cli-debug" "gnutls-serv" "ocsptool"
;"p11tool"
"psktool" "srptool"
"/lib/libgnutls.so"
"/lib/libgnutls-dane.so"
"/lib/libgnutlsxx.so"
;"/lib/guile/2.2/guile-gnutls-v-2.so"
;;
	 ))))
