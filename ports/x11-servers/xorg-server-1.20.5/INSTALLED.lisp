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
"cvt" "gtf" "X" "Xnest" "Xorg" "Xvfb"
;"dmxaddinput" "dmxaddscreen" "dmxinfo" "dmxreconfig" "dmxresize" "dmxrminput" "dmxrmscreen" "dmxtodmx" "dmxwininfo" "vdltodmx" "Xdmx" "xdmxconfig" "Xephyr" "Xfbdev"
"/lib/xorg"
"/lib/xorg/modules/drivers"
"/lib/xorg/modules/drivers/modesetting_drv.so"
"/include/xorg"
;;
	 ))))
