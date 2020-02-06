(eval(append '(and)
  (map 'list
       (lambda (elm)
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm))))
       (list
;;
"/include/linux"
"/include/asm"
"/include/asm-generic"
"/include/drm"
"/include/misc"
"/include/mtd"
"/include/rdma"
"/include/scsi"
"/include/sound"
"/include/video"
"/include/xen"
;;
	 ))))
