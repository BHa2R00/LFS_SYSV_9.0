(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
"/bin/tabs"
"/bin/tic"
"/bin/toe"
"/bin/tput"
"/bin/tset"
"/lib/libformw.so"
"/lib/libmenuw.so"
"/lib/libncursesw.so"
"/lib/libpanelw.so"
;;
	 ))))
