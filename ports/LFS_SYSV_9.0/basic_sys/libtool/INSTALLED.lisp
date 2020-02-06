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
"/bin/libtool"
"/bin/libtoolize"
"/lib/libltdl.so"
"/include/libltdl"
"/share/libtool"
;;
	 ))))
