(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
"/lib/libmpfr.so"
"/share/doc/mpfr-4.0.2"
;;
	 ))))