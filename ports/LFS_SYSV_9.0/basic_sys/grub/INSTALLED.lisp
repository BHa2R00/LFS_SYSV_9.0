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
"/sbin/grub-bios-setup"
"/bin/grub-editenv"
"/bin/grub-file"
"/bin/grub-fstest"
"/bin/grub-glue-efi"
"/sbin/grub-install"
"/bin/grub-kbdcomp"
"/sbin/grub-macbless"
"/bin/grub-menulst2cfg"
"/sbin/grub-mkconfig"
"/bin/grub-mkimage"
"/bin/grub-mklayout"
"/bin/grub-mknetdir"
"/bin/grub-mkpasswd-pbkdf2"
"/bin/grub-mkrelpath"
"/bin/grub-mkrescue"
"/bin/grub-mkstandalone"
"/sbin/grub-ofpathname"
"/sbin/grub-probe"
"/sbin/grub-reboot"
"/bin/grub-render-label"
"/bin/grub-script-check"
"/sbin/grub-set-default"
"/sbin/grub-sparc64-setup"
"/bin/grub-syslinux2cfg"
"/lib/grub"
"/etc/grub.d"
"/share/grub"
;;
	 ))))
