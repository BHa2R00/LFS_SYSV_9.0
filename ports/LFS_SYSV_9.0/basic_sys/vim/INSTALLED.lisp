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
"/bin/ex"
"/bin/rview"
"/bin/rvim"
"/bin/vi"
"/bin/view"
"/bin/vim"
"/bin/vimdiff"
"/bin/vimtutor"
"/bin/xxd"
"/share/vim"
;;
	 ))))
