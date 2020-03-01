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
;"blocks" "checkers"
"fltk-config" "fluid"
;"sudoku"
"/lib/libfltk.so"
"/lib/libfltk_forms.so"
"/lib/libfltk_gl.so"
"/lib/libfltk_images.so"
"/include/FL"
;;
	 ))))
