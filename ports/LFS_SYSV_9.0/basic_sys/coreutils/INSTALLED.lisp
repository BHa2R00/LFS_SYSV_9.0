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
"/bin/b2sum"
"/bin/base32"
"/bin/base64"
"/bin/basename"
"/bin/basenc"
"/bin/cat"
"/bin/chcon"
"/bin/chgrp"
"/bin/chmod"
"/bin/chown"
"/sbin/chroot"
"/bin/cksum"
"/bin/comm"
"/bin/cp"
"/bin/csplit"
"/bin/cut"
"/bin/date"
"/bin/dd"
"/bin/df"
"/bin/dir"
"/bin/du"
"/bin/echo"
"/bin/env"
"/bin/groups"
"/bin/install"
"/bin/ln"
"/bin/ls"
"/bin/md5sum"
"/bin/mkdir"
"/bin/mknod"
"/bin/mv"
"/bin/pwd"
"/bin/rm"
"/bin/sha512sum"
"/bin/sleep"
"/bin/split"
"/bin/tac"
"/bin/tail"
"/bin/tee"
"/bin/touch"
"/bin/uname"
"/bin/users"
"/bin/wc"
"/bin/who"
"/libexec/coreutils"
"/libexec/coreutils/libstdbuf.so"
;;
	 ))))
