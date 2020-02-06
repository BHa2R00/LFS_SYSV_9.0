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
"/bin/awk"
"/bin/gawk"
"/lib/gawk"
"/lib/gawk/filefuncs.so"
"/lib/gawk/fnmatch.so"
"/lib/gawk/fork.so"
"/lib/gawk/inplace.so"
"/lib/gawk/intdiv.so"
"/lib/gawk/ordchr.so"
"/lib/gawk/readdir.so"
"/lib/gawk/readfile.so"
"/lib/gawk/revoutput.so"
"/lib/gawk/revtwoway.so"
"/lib/gawk/rwarray.so"
"/lib/gawk/time.so"
;;
	 ))))
