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
"iceauth" "luit" "mkfontdir" "mkfontscale" "sessreg" "setxkbmap" "smproxy" "x11perf" "x11perfcomp" "xauth" "xbacklight" "xcmsdb" "xcursorgen" "xdpr" "xdpyinfo" "xdriinfo" "xev" "xgamma" "xhost" "xinput" "xkbbell" "xkbcomp" "xkbevd" "xkbvleds" "xkbwatch" "xkill" "xlsatoms" "xlsclients" "xmessage" "xmodmap" "xpr" "xprop" "xrandr" "xrdb" "xrefresh" "xset" "xsetroot" "xvinfo" "xwd" "xwininfo" "xwud"
;;
	 ))))
