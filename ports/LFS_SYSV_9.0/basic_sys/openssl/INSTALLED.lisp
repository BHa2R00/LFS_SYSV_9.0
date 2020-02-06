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
"/bin/c_rehash"
"/bin/openssl"
"/lib/libcrypto.so"
"/lib/libssl.so"
"/etc/ssl"
"/include/openssl"
"/lib/engines-1.1"
"/share/doc/openssl-1.1.1c"
;;
	 ))))
