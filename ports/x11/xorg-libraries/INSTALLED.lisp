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
"cxpm" "sxpm"
"/lib/libdmx.so"
"/lib/libfontenc.so"
"/lib/libFS.so"
"/lib/libICE.so"
"/lib/libpciaccess.so"
"/lib/libSM.so"
"/lib/libX11.so"
"/lib/libXaw6.so"
"/lib/libXaw7.so"
"/lib/libXaw.so"
"/lib/libXcomposite.so"
"/lib/libXcursor.so"
"/lib/libXdamage.so"
"/lib/libXext.so"
"/lib/libXfixes.so"
"/lib/libXfont2.so"
"/lib/libXft.so"
"/lib/libXinerama.so"
"/lib/libXi.so"
"/lib/libxkbfile.so"
"/lib/libXmu.so"
"/lib/libXmuu.so"
"/lib/libXpm.so"
"/lib/libXrandr.so"
"/lib/libXrender.so"
"/lib/libXRes.so"
"/lib/libxshmfence.so"
"/lib/libXss.so"
"/lib/libXt.so"
"/lib/libXtst.so"
"/lib/libXvMC.so"
"/lib/libXvMCW.so"
"/lib/libXv.so"
"/lib/libXxf86dga.so"
"/lib/libXxf86vm.so"
"/include/X11/fonts"
"/include/X11/Xtrans"
;"/share/doc/libFS"
;"/share/doc/libICE"
;"/share/doc/libSM"
;"/share/doc/libX11"
;"/share/doc/libXaw"
;"/share/doc/libXext"
;"/share/doc/libXi"
;"/share/doc/libXmu"
;"/share/doc/libXrender"
;"/share/doc/libXt"
;"/share/doc/libXtst"
;"/share/doc/libXvMC"
;"/share/doc/xtrans"
"/share/X11/locale"
;;
	 ))))
