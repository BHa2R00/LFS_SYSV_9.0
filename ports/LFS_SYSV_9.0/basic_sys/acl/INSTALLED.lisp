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
"/bin/chacl"
"/bin/getfacl"
"/bin/setfacl"
"/lib/libacl.so"
"/include/acl"
"/share/doc/acl-2.2.53"
;;
	 ))))
