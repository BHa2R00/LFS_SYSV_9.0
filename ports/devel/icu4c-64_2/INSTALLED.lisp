(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (let ((r
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (probe-file (string+ *dest-dir* "/bin/" elm))
	   (probe-file (string+ *dest-dir* "/sbin/" elm))
	   (directory (string+ *dest-dir* elm))
	   (probe-file elm)
	   (probe-file (string+ "/bin/" elm))
	   (probe-file (string+ "/sbin/" elm))
	   (directory elm)
	   )))
	 (format t ";;CHECK_EXIST	~S	~S~%" elm r)
	 r)
	 )
       (list
;;
"derb" "escapesrc" "genbrk" "genccode" "gencfu" "gencmn" "gencnval" "gendict" "gennorm2" "genrb" "gensprep" "icu-config" "icuinfo" "icupkg" "makeconv" "pkgdata" "uconv"
"/lib/libicudata.so"
"/lib/libicui18n.so"
"/lib/libicuio.so"
"/lib/libicutest.so"
"/lib/libicutu.so"
"/lib/libicuuc.so"
"/include/unicode"
"/lib/icu"
;;
	 ))))
