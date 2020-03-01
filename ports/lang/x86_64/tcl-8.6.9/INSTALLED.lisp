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
"sqlite3_analyzer" "tclsh" "tclsh8.6"
"/lib/libtcl8.6.so"
"/lib/itcl4.1.2"
"/lib/sqlite3.25.3"
"/lib/tcl8"
"/lib/tcl8.6"
"/lib/tdbc1.1.0"
"/lib/tdbcmysql1.1.0"
"/lib/tdbcodbc1.1.0"
"/lib/tdbcpostgres1.1.0"
"/lib/thread2.8.4"
;;
	 ))))
