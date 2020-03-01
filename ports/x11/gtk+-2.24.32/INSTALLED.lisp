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
"gtk-builder-convert" "gtk-demo" "gtk-query-immodules-2.0" "gtk-update-icon-cache"
"/lib/libgailutil.so"
"/lib/libgdk-x11-2.0.so"
"/lib/libgtk-x11-2.0.so"
"/include/gail-1.0"
"/include/gtk-2.0"
"/include/gtk-unix-print-2.0"
"/lib/gtk-2.0"
;;
	 ))))
