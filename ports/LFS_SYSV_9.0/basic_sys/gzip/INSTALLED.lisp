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
"/bin/gunzip"
"/bin/gzexe"
"/bin/gzip"
"/bin/uncompress"
"/bin/zcat"
"/bin/zcmp"
"/bin/zdiff"
"/bin/zegrep"
"/bin/zfgrep"
"/bin/zforce"
"/bin/zgrep"
"/bin/zless"
"/bin/zmore"
"/bin/znew"
;;
	 ))))
