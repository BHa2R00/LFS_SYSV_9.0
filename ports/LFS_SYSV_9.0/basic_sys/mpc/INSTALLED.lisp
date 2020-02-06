(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
"/lib/libmpc.so"
"/share/doc/mpc-1.1.0"
;;
	 ))))
