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
;"glxgears" "glxinfo"
;"/lib/d3dadapter9.so"
;"/lib/kms_swrast_dri.so"
"/lib/libEGL.so"
"/lib/libGL.so"
"/lib/libGLESv1_CM.so"
"/lib/libGLESv2.so"
;"/lib/libOSMesa.so"
"/lib/libgbm.so"
"/lib/libglapi.so"
"/include/EGL"
"/include/GL"
"/include/GLES"
"/include/GLES2"
"/include/GLES3"
"/include/KHR"
"/include/vulkan"
;"/lib/d3d"
"/lib/dri"
;"/lib/vdpau"
"/share/drirc.d"
"/share/vulkan/icd.d"
;;
	 ))))
