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
"clang" "clang++" "clang-check" "clang-cl" "clang-cpp" "clang-format"
;"clang-func-mapping"
"clang-import-test" "clang-offload-bundler" "clang-refactor" "clang-rename"
"llc" "lli" "llvm-ar" "llvm-as" "llvm-bcanalyzer" "llvm-cat" "llvm-cfi-verify" "llvm-config" "llvm-cov" "llvm-c-test" "llvm-cvtres" "llvm-cxxdump" "llvm-cxxfilt" "llvm-diff" "llvm-dis"
;"llvm-dlltool "
"llvm-dwarfdump" "llvm-dwp"
;"llvm-exegenesis"
"llvm-extract" "llvm-lib" "llvm-link" "llvm-lto" "llvm-lto2" "llvm-mc" "llvm-mca" "llvm-modextract" "llvm-mt" "llvm-nm" "llvm-objcopy" "llvm-objdump" "llvm-opt-report" "llvm-pdbutil" "llvm-profdata" "llvm-ranlib" "llvm-rc" "llvm-readelf" "llvm-readobj" "llvm-rtdyld" "llvm-size" "llvm-split" "llvm-stress" "llvm-strings" "llvm-strip" "llvm-symbolizer" "llvm-tblgen" "llvm-undname" "llvm-xray"
"/lib/libLLVM.so"
"/lib/libclang.so"
"/include/llvm"
"/include/llvm-c"
"/include/clang"
"/include/clang-c"
"/lib/cmake/llvm"
;"/lib/cmake/clang"
;;
	 ))))
