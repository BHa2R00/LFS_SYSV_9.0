(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (let ((r
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (probe-file (string+ *dest-dir* "/bin/" elm))
	   (probe-file (string+ *dest-dir* "/sbin/" elm))
	   (directory (string+ *dest-dir* elm))
	   ;(probe-file elm)
	   ;(probe-file (string+ "/bin/" elm))
	   ;(probe-file (string+ "/sbin/" elm))
	   ;(directory elm)
	   )))
	 (format t ";;CHECK_EXIST	~S	~S~%" elm r)
	 r)
	 )
       (list
;;
"/bin/c++"
"/bin/cc"
"/bin/cpp"
"/bin/g++"
"/bin/gcc"
"/bin/gcc-ar"
"/bin/gcc-nm"
"/bin/gcc-ranlib"
"/bin/gcov"
"/bin/gcov-dump"
"/bin/gcov-tool"
"/bin/gfortran"
"/lib/libcc1.so"
"/lib/libgcc_s.so"
"/lib/libgomp.so"
"/lib/libstdc++.so"
"/include/c++"
"/lib/gcc"
"/libexec/gcc"
"/share/gcc-9.2.0"
;;
	 ))))
