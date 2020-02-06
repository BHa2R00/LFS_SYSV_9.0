(eval(append '(and)
  (map 'list
       (lambda (elm)
	 ;(format t ">>> ~S	~S~%" elm
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm)))
	 ;)
	 )
       (list
;;
"/lib/ldscripts"
"/bin/addr2line"
"/bin/ar"
"/bin/as"
"/bin/c++filt"
"/bin/dwp"
"/bin/elfedit"
"/bin/gprof"
"/bin/ld"
"/bin/ld.bfd"
"/bin/ld.gold"
"/bin/nm"
"/bin/objcopy"
"/bin/objdump"
"/bin/ranlib"
"/bin/readelf"
"/bin/size"
"/bin/strings"
"/bin/strip"
"/lib/libbfd.a"
"/lib/libbfd.so"
"/lib/libopcodes.a"
"/lib/libopcodes.so"
;;
	 ))))
