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
"g-ir-annotation-tool" "g-ir-compiler"
;"g-ir-doc-tool"
"g-ir-inspect" "g-ir-generate" "g-ir-scanner"
"/lib/libgirepository-1.0.so"
"/include/gobject-introspection-1.0"
"/lib/girepository-1.0"
"/lib/gobject-introspection"
;;
	 ))))
