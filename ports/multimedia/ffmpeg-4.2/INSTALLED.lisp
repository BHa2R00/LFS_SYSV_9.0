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
"ffmpeg"
;"ffplay"
"ffprobe"
;"ffserver"
"/lib/libavcodec.so"
"/lib/libavdevice.so"
"/lib/libavfilter.so"
"/lib/libavformat.so"
"/lib/libavutil.so"
"/lib/libpostproc.so"
"/lib/libswresample.so"
"/lib/libswscale.so"
"/include/libavcodec"
"/include/libavdevice"
"/include/libavfilter"
"/include/libavformat"
"/include/libavutil"
"/include/libpostproc"
"/include/libswresample"
"/include/libswscale"
;;
	 ))))
