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
"gst-inspect-1.0" "gst-launch-1.0" "gst-stats-1.0" "gst-typefind-1.0"
"/lib/libgstbase-1.0.so"
"/lib/libgstcheck-1.0.so"
"/lib/libgstcontroller-1.0.so"
"/lib/libgstnet-1.0.so"
"/lib/libgstreamer-1.0.so"
"/lib/gstreamer-1.0"
"/include/gstreamer-1.0"
;;
	 ))))
