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
"/bin/flex"
"/bin/lex"
"/lib/libfl.so"
"/share/doc/flex-2.6.4"
;;
	 ))))
