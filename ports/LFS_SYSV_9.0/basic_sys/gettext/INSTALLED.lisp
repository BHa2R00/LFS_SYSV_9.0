(eval(append '(and)
  (map 'list
       (lambda (elm)
	 ;(format t ">>> ~S	~S~%" elm
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))
	   (probe-file elm)
	   (directory elm)
	   )
	 ;)
	 )
       (list
;;
"/bin/autopoint"
"/bin/envsubst"
"/bin/gettext"
"/bin/gettext.sh"
"/bin/gettextize"
"/bin/msgattrib"
"/bin/msgcat"
"/bin/msgcmp"
"/bin/msgcomm"
"/bin/msgconv"
"/bin/msgen"
"/bin/msgexec"
"/bin/msgfilter"
"/bin/msgfmt"
"/bin/msggrep"
"/bin/msginit"
"/bin/msgmerge"
"/bin/msgunfmt"
"/bin/msguniq"
"/bin/ngettext"
"/bin/recode-sr-latin"
"/bin/xgettext"
"/lib/libasprintf.so"
"/lib/libgettextlib.so"
"/lib/libgettextpo.so"
"/lib/libgettextsrc.so"
"/lib/preloadable_libintl.so"
"/lib/gettext"
"/share/doc/gettext-0.20.1"
"/share/gettext"
"/share/gettext-0.20"
;;
	 ))))
