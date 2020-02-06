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
"/bin/2to3"
"/bin/idle3"
"/bin/pip3"
"/bin/pydoc3"
"/bin/python3"
"/bin/python3-config"
"/bin/pyvenv"
"/lib/libpython3.7m.so"
"/lib/libpython3.so"
"/include/python3.7m"
"/lib/python3.7"
;;
	 ))))
