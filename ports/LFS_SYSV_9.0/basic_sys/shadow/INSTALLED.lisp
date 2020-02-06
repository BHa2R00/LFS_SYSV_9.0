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
"/bin/chage"
"/bin/chfn"
;"/bin/chgpasswd"
;"/bin/chpasswd"
"/bin/chsh"
"/bin/expiry"
"/bin/faillog"
"/bin/gpasswd"
;"/bin/groupadd"
;"/bin/groupdel"
;"/bin/groupmems"
;"/bin/groupmod"
;"/bin/grpck"
;"/bin/grpconv"
;"/bin/grpunconv"
"/bin/lastlog"
"/bin/login"
;"/bin/logoutd"
"/bin/newgidmap"
"/bin/newgrp"
"/bin/newuidmap"
;"/bin/newusers"
;"/bin/nologin"
"/bin/passwd"
;"/bin/pwck"
;"/bin/pwconv"
;"/bin/pwunconv"
;"/bin/su"
"/bin/sg"
;"/bin/useradd"
;"/bin/userdel"
;"/bin/usermod"
;"/bin/vigr"
;"/bin/vipw"
"/etc/default"
;;
	 ))))
