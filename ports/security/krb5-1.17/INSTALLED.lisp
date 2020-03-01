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
"gss-client" "gss-server" "k5srvutil" "kadmin" "kdb5_util" "kinit" "klist" "kpasswd" "kprop" "krb5-config" "ksu" "ktutil" "sclient" "sim_client" "sim_server" "sserver" "uuserver"
"/lib/libgssapi_krb5.so"
"/lib/libgssrpc.so"
"/lib/libk5crypto.so"
"/lib/libkrb5.so"
"/lib/libverto.so"
"/lib/krb5"
"/include/gssapi"
"/include/gssrpc"
"/include/kadm5"
"/include/krb5"
;;
	 ))))
