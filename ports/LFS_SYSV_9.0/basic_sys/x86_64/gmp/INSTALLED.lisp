(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
"/lib/libgmp.so"
"/lib/libgmpxx.so"
"/share/doc/gmp-6.1.2"
;;
	 ))))
