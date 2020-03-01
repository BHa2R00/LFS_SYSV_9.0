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
"dbus-cleanup-sockets" "dbus-daemon" "dbus-launch" "dbus-monitor" "dbus-run-session" "dbus-send" "dbus-test-tool" "dbus-update-activation-environment" "dbus-uuidgen"
"/lib/libdbus-1.so"
"/etc/dbus-1"
"/include/dbus-1.0"
"/lib/dbus-1.0"
;"/lib/cmake/DBus1"
"/share/dbus-1"
"/share/xml/dbus-1"
"/share/doc/dbus-1.12.16"
"/var/lib/dbus"
"/var/run/dbus"
;;
	 ))))
