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
"dpkg"                    "dpkg-genchanges"         "dpkg-scansources"
"dpkg-architecture"       "dpkg-gencontrol"         "dpkg-shlibdeps"
"dpkg-buildflags"         "dpkg-gensymbols"         "dpkg-source"
"dpkg-buildpackage"       "dpkg-maintscript-helper" "dpkg-split"
"dpkg-checkbuilddeps"     "dpkg-mergechangelogs"    "dpkg-statoverride"
"dpkg-deb"                "dpkg-name"               "dpkg-trigger"
"dpkg-distaddfile"        "dpkg-parsechangelog"     "dpkg-vendor"
"dpkg-divert"             "dpkg-query"              
"dpkg-genbuildinfo"       "dpkg-scanpackages"
"/lib/libdpkg.a"
"/include/dpkg"
"/share/dpkg"
;;
	 ))))
