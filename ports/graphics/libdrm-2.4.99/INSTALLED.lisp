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
"/lib/libdrm_amdgpu.so"
"/lib/libdrm_intel.so"
"/lib/libdrm_nouveau.so"
"/lib/libdrm_radeon.so"
"/lib/libdrm.so"
"/lib/libkms.so"
"/include/libdrm"
"/include/libkms"
"/share/libdrm"
;;
	 ))))
