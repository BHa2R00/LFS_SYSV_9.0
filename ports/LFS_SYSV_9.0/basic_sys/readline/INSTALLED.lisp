(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
"/include/readline"
"/lib/libhistory.so"
"/lib/libreadline.so"
;;
	 ))))
