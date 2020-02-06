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
"/bin/attr"
"/bin/getfattr"
"/bin/setfattr"
"/lib/libattr.so"
"/include/attr"
"/share/doc/attr-2.4.48"
;;
	 ))))
