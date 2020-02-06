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
"/bin/fuser"
"/bin/killall"
"/bin/peekfd"
"/bin/prtstat"
"/bin/pslog"
"/bin/pstree"
;;
	 ))))
