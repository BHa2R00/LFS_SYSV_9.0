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
"gst-device-monitor-1.0" "gst-discoverer-1.0" "gst-play-1.0"
"/lib/libgstallocators-1.0.so"
"/lib/libgstapp-1.0.so"
"/lib/libgstaudio-1.0.so"
"/lib/libgstfft-1.0.so"
"/lib/libgstgl-1.0.so"
"/lib/libgstpbutils-1.0.so"
"/lib/libgstriff-1.0.so"
"/lib/libgstrtp-1.0.so"
"/lib/libgstrtsp-1.0.so"
"/lib/libgstsdp-1.0.so"
"/lib/libgsttag-1.0.so"
"/lib/libgstvideo-1.0.so"
"/include/gstreamer-1.0/gst/allocators"
"/include/gstreamer-1.0/gst/app"
"/include/gstreamer-1.0/gst/audio"
"/include/gstreamer-1.0/gst/fft"
"/include/gstreamer-1.0/gst/gl"
"/include/gstreamer-1.0/gst/pbutils"
"/include/gstreamer-1.0/gst/riff"
"/include/gstreamer-1.0/gst/rtp"
"/include/gstreamer-1.0/gst/rtsp"
"/include/gstreamer-1.0/gst/sdp"
"/include/gstreamer-1.0/gst/tag"
"/include/gstreamer-1.0/gst/video"
"/share/gst-plugins-base"
;;
	 ))))
