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
"/bin/gdbm_dump"
"/bin/gdbm_load"
"/bin/gdbmtool"
"/lib/libgdbm.so"
"/lib/libgdbm_compat.so"
;;
	 ))))
