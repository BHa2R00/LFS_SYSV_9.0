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
"/bin/addftinfo"
"/bin/chem"
"/bin/eqn"
"/bin/groff"
"/bin/hpftodit"
"/bin/indxbib"
"/bin/lkbib"
"/bin/mmroff"
"/bin/nroff"
"/bin/pdfroff"
"/bin/troff"
"/lib/groff"
"/share/groff"
;;
	 ))))
