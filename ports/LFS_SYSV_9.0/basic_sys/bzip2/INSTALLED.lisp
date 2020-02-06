(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
;"/bin/bzcat"
"/bin/bzcmp"
"/bin/bzdiff"
"/bin/bzegrep"
"/bin/bzfgrep"
"/bin/bzgrep"
"/bin/bzip2recover"
"/bin/bzless"
"/bin/bzmore"
"/lib/libbz2.so"
"/share/doc/bzip2-1.0.8"
;;
	 ))))
