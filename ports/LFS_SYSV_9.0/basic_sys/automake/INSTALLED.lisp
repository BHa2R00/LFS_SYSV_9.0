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
"/bin/aclocal"
"/bin/automake"
"/share/aclocal-1.16"
"/share/automake-1.16"
"/share/doc/automake-1.16.1"
;;
	 ))))
