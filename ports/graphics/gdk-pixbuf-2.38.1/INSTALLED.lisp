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
"gdk-pixbuf-csource" "gdk-pixbuf-pixdata" "gdk-pixbuf-query-loaders" "gdk-pixbuf-thumbnailer"
"/lib/libgdk_pixbuf-2.0.so"
"/lib/libgdk_pixbuf_xlib-2.0.so"
"/include/gdk-pixbuf-2.0"
"/lib/gdk-pixbuf-2.0"
;;
	 ))))
