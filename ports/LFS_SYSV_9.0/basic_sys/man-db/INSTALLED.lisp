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
"/sbin/accessdb"
"/bin/catman"
"/bin/lexgrog"
"/bin/man"
"/bin/mandb"
"/bin/manpath"
"/bin/whatis"
"/lib/man-db"
"/lib/man-db/libman.so"
"/lib/man-db/libmandb.so"
"/libexec/man-db"
;;
	 ))))
