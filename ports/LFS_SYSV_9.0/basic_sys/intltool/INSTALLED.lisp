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
"/bin/intltool-extract"
"/bin/intltool-merge"
"/bin/intltool-prepare"
"/bin/intltool-update"
"/bin/intltoolize"
"/share/doc/intltool-0.51.0"
"/share/intltool"
;;
	 ))))
