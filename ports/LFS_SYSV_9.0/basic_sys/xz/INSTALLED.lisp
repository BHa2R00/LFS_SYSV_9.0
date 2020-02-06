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
"/bin/xz"
"/bin/xzdiff"
"/bin/xzgrep"
"/bin/xzless"
"/bin/lzmadec"
"/bin/lzmainfo"
"/bin/xzmore"
"/bin/xzdec"
"/lib/liblzma.so"
"/include/lzma"
"/share/doc/xz-5.2.4"
;;
	 ))))
