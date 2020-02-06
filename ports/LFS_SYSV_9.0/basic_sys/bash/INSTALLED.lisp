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
"/bin/bash"
"/bin/bashbug"
"/bin/sh"
"/include/bash"
"/lib/bash"
"/share/doc/bash-5.0"
;;
	 ))))
