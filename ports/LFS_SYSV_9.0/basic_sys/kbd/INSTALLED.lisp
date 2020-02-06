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
"/bin/chvt"
"/bin/deallocvt"
"/bin/fgconsole"
"/bin/getkeycodes"
"/bin/kbdinfo"
"/bin/kbd_mode"
"/bin/kbdrate"
"/bin/loadkeys"
"/bin/mapscrn"
"/bin/openvt"
"/bin/psfxtable"
"/bin/setfont"
"/bin/setkeycodes"
"/bin/setleds"
"/bin/setmetamode"
"/bin/setvtrgb"
"/bin/showconsolefont"
"/bin/showkey"
"/bin/unicode_start"
"/bin/unicode_stop"
"/share/consolefonts"
"/share/consoletrans"
"/share/keymaps"
"/share/unimaps"
;;
	 ))))
