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
"addr2line" "ar" "as" "c++filt" "dwp" "elfedit" "gprof" "ld" "ld.bfd" "ld.gold" "nm" "objcopy" "objdump" "ranlib" "readelf" "size" "strings" "strip"
"/lib/libbfd.so"
;"/lib/libbfd.a"
"/lib/libopcodes.so"
;"/lib/libopcodes.a"
"/lib/ldscripts"
;;
	 ))))
