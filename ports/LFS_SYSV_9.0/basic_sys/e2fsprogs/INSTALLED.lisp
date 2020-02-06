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
"badblocks" "chattr" "compile_et" "debugfs" "dumpe2fs""e2freefrag" "e2fsck" "e2image" "e2label" "e2mmpstatus" "e2scrub" "e2scrub_all" "e2undo" "e4crypt" "e4defrag" "filefrag" "fsck.ext2" "fsck.ext3" "fsck.ext4" "logsave" "lsattr" "mk_cmds" "mke2fs" "mkfs.ext2" "mkfs.ext3" "mkfs.ext4" "mklost+found" "resize2fs" "tune2fs"
"/lib/libcom_err.so"
"/lib/libe2p.so"
"/lib/libext2fs.so"
"/lib/libss.so"
"/include/e2p"
"/include/et"
"/include/ext2fs"
"/include/ss"
;"/lib/e2fsprogs"
"/share/et"
"/share/ss"
;;
	 ))))
