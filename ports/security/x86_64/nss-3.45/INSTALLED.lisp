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
"certutil" "nss-config" "pk12util"
"/lib/libfreebl3.so"
"/lib/libgtest1.so"
"/lib/libnss3.so"
"/lib/libnssckbi.so"
"/lib/libnssdbm3.so"
"/lib/libnsssysinit.so"
"/lib/libnssutil3.so"
"/lib/libsmime3.so"
"/lib/libsoftokn3.so"
"/lib/libssl3.so"
"/include/nss"
;;
	 ))))
