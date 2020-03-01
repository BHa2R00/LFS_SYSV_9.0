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
"gapplication" "gdbus" "gdbus-codegen" "gio" "gio-launch-desktop" "gio-querymodules" "glib-compile-resources" "glib-compile-schemas" "glib-genmarshal" "glib-gettextize" "glib-mkenums" "gobject-query" "gresource" "gsettings" "gtester" "gtester-report"
"/lib/libgio-2.0.so"
"/lib/libglib-2.0.so"
"/lib/libgmodule-2.0.so"
"/lib/libgobject-2.0.so"
"/lib/libgthread-2.0.so"
"/include/gio-unix-2.0"
"/include/glib-2.0"
;;
	 ))))
