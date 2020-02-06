(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
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
