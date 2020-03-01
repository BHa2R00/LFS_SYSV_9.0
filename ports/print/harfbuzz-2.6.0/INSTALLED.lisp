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
"hb-ot-shape-closure" "hb-shape" "hb-subset"
"/lib/libharfbuzz.so"
"/lib/libharfbuzz-gobject.so"
;"/lib/libharfbuzz-icu.so"
"/lib/libharfbuzz-subset.so"
"/include/harfbuzz"
;"/lib/harfbuzz"
;;
	 ))))
