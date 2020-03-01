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
"event_rpcgen.py"
"/lib/libevent_core.so"
"/lib/libevent_extra.so"
"/lib/libevent_openssl.so"
"/lib/libevent_pthreads.so"
"/lib/libevent.so"
"/include/event2"
"/share/doc/libevent-2.1.11"
;;
	 ))))
