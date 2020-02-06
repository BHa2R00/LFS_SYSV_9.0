(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
"/bin/pkg-config"
"/share/doc/pkg-config-0.29.2"
;;
	 ))))
