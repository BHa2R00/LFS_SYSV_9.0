(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))
	   (probe-file elm)
	   (directory elm)
	   ))
       (list
;;
"/bin/info"
"/bin/install-info"
"/bin/makeinfo"
"/bin/pdftexi2dvi"
"/bin/pod2texi"
"/bin/texi2any"
"/bin/texi2dvi"
"/bin/texi2pdf"
"/bin/texindex"
"/lib/texinfo"
"/lib/texinfo/MiscXS.so"
"/lib/texinfo/Parsetexi.so"
"/lib/texinfo/XSParagraph.so"
"/share/texinfo"
;;
	 ))))
