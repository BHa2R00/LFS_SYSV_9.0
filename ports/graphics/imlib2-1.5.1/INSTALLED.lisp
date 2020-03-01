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
"imlib2_bumpmap" "imlib2_colorspace" "imlib2-config" "imlib2_conv" "imlib2_grab" "imlib2_poly" "imlib2_show" "imlib2_test" "imlib2_view"
"/lib/libImlib2.so"
"/lib/imlib2"
;;
	 ))))
