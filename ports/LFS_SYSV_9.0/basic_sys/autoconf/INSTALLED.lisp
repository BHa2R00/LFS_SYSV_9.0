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
"/bin/autoconf"
"/bin/autoheader"
"/bin/autom4te"
"/bin/autoreconf"
"/bin/autoscan"
"/bin/autoupdate"
"/bin/ifnames"
"/share/autoconf"
;;
	 ))))
