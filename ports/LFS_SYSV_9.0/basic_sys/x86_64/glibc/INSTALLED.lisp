(eval(append '(or)
  (map 'list
       (lambda (elm)
	 ;(format t ">>> ~S	~S~%" elm
	 (or
	   (probe-file (string+ *dest-dir* elm))
	   (directory (string+ *dest-dir* elm)))
	 ;)
	 )
       (list
;;
"/include/arpa"
"/include/bits"
"/include/gnu"
"/include/net"
"/include/netash"
"/include/netatalk"
"/include/netax25"
"/include/neteconet"
"/include/netinet"
"/include/netipx"
"/include/netiucv"
"/include/netpacket"
"/include/netrom"
"/include/netrose"
"/include/nfs"
"/include/protocols"
"/include/rpc"
"/include/sys"
"/lib/audit"
"/lib/gconv"
"/lib/locale"
"/libexec/getconf"
"/share/i18n"
"/share/zoneinfo"
"/bin/catchsegv"
"/bin/gencat"
"/bin/getconf"
"/bin/getent"
"/bin/iconv"
;"/bin/iconvconfig"
;"/bin/ldconfig"
"/bin/ldd"
;"/bin/lddlibc4"
"/bin/locale"
"/bin/localedef"
"/bin/makedb"
"/bin/mtrace"
;"/bin/nscd"
"/bin/pcprofiledump"
"/bin/pldd"
;"/bin/sln"
"/bin/sotruss"
"/bin/sprof"
"/bin/tzselect"
"/bin/xtrace"
;"/bin/zdump"
;"/bin/zic"
;;
	 ))))
