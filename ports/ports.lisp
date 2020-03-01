(defparameter *ports-dir* "/ports/")
(defparameter *target* "x86_64-pc-linux-gnu")
;(defparameter *target* "x86_64-lfs-linux-gnu")
(defparameter *dest-dir* "/usr/")
;(defparameter *dest-dir* "/mnt/dest/")
(defparameter *make-jobs* 5)
(defparameter *echo* nil)

(defparameter *path* (list "/bin/" "/sbin/" "/usr/bin/" "/usr/sbin/" "/usr/local/bin/" "/usr/local/sbin/" "/tools/bin/"))
;(defparameter *path* (list "/bin/" "/sbin/" "/usr/bin/" "/usr/sbin/" "/usr/local/bin/" "/usr/local/sbin/"))

(defun exec (output &rest l1)
  (let ((r (list))
	(name (car l1))
	(args (cdr l1)))
    (dolist (path *path*)
      (push (if (probe-file name) name (probe-file (merge-pathnames path name))) r))
    (let ((paths (eval (push 'or r))))
      (if output
	(sb-ext:run-program paths args :output output)
	(sb-ext:run-program paths args)))))

(defun string+ (&rest strs)
  (with-output-to-string (so)
	(dolist (str strs)
	  (format so "~A" str))))

(defmacro with-fp-r (s file &body body)
  `(with-open-file (,s ,file
		      :direction :input)
    ,@body))

(defmacro with-fp-w (s file &body body)
  `(with-open-file (,s ,file
		      :direction :output
		      :if-does-not-exist :create
		      :if-exists :supersede)
    ,@body))

(defmacro with-fp-w+ (s file &body body)
  `(with-open-file (,s ,file
		      :direction :output
		      :if-does-not-exist :create
		      :if-exists :append)
    ,@body))

(defun sh-run (so str)
  (exec so "sh" (string+ *ports-dir* "/SH-RUN") str))

(defun sh-run-with-log (echo so str log_file)
  (exec so "sh" (string+ *ports-dir* (if echo "/SH-RUN-WITH-LOG-T" "/SH-RUN-WITH-LOG")) str log_file))

(defun port-pkg (echo-str path &rest cmd)
  (let*((tm (get-universal-time))
	(shrc (string+ "./shrc_" tm))
	(state_file (string+ path "/R"))
	(log_file (string+ path "/LOG"))
	(str1 (string+ "source " shrc " && cd " path))
	(r nil))
    (with-fp-w
      so shrc
      (format so
"export PS1='PORTS ~A'
export HOME=/root
export LC_ALL=POSIX
export PS1='(ports chroot) \u:\w\$ '
export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin
export PORTS=~A
export PORTS_DEST=~A
export PORTS_JOBS=-j~A
export PORTS_TGT=~A
"
;"umask 022
;export LC_ALL=POSIX
;export PATH=/tools/bin:/bin:/usr/bin
;export PORTS=~A
;export PORTS_DEST=~A
;export PORTS_JOBS=-j~A
;export PORTS_TGT=~A
;"
	      path
	      *ports-dir*
	      *dest-dir*
	      *make-jobs*
	      *target*))
      (with-fp-w so state_file (format so "NIL"))
    ;(map 'list (lambda (file)
    (dolist (file cmd)
	   (format t "~%;;~A~%" (string+ (code-char 27) "[33m" "SHELL " path "/" file (code-char 27) "[0m"))
	   (let*((egrep_error_file (string+ path "/" file "_EGREP_CHECK"))
		 (egrep_error_file-p (probe-file egrep_error_file))
		 (error-rgl (if egrep_error_file-p (with-fp-r fi egrep_error_file (read fi)) nil))
		 (state (with-fp-r si state_file (read si))))
	     (if state
	       (let ()
		 (format t "~%;;~A~%" (string+ (code-char 27) "[31m" "cat " state_file (code-char 27) "[0m"))
		 (if egrep_error_file-p
		   (let ()
		     (sh-run t (string+ "cat " state_file " | egrep -w --color '" error-rgl "'")))nil)
		 (setf r state))
	       (let ()
		 (with-fp-w so log_file (format so "~%"))
		 (sh-run-with-log (read-from-string echo-str) t (string+ str1 " && sh " file) log_file)
		 (let ((str2 (if egrep_error_file-p (with-output-to-string(so)(exec so "egrep" "-w" error-rgl log_file))"")))
		   (if (string= str2 "")
		     (let ()
		       (with-fp-w so state_file (format so "NIL"))
		       (setf r (or nil r)))
		     (let ()
		       (with-fp-w so state_file (format so "~S" str2))
		       (setf r (or str2 r)))))
		 (format t "")
		 (exec t "rm" log_file))))
	   )
	   ;)cmd)
    (exec t "rm" shrc)
    (exec t "rm" state_file)
    r))

(defun port-pkg1 (path &rest cmd)
  (format t "~%;;~C[33mPORT-PKG1 ~A ~A ~C[0m~%" (code-char 27) path cmd (code-char 27))
  (if (string= (car cmd) "reinstall")
    (let ((r (apply 'port-pkg (append (list "T" path) (cdr cmd)))))
      (if r r 'INSTALLED))
  (let*((installed_file (string+ path "/INSTALLED.lisp"))
	(installed (if (probe-file installed_file) (with-fp-r fi installed_file (eval(read fi))) nil)))
    (format t "~%;;~A~%" (string+ (code-char 27) "[33m" "CHECK_INSTALLED " path (code-char 27) "[0m"))
    (if installed
      'INSTALLED
      (let ((r (apply 'port-pkg (append (list "T" path) cmd))))
	(if r
	  r
	  ;(apply 'port-pkg1 (append (list path) cmd))
	  (port-pkg1 path)
	  ;'INSTALLED
	  ))))))

(defun port-pkg2 (path &rest cmd)
  (format t "~%;;~C[33mPORT-PKG2 ~A ~A ~C[0m~%" (code-char 27) path cmd (code-char 27))
  (if (directory path)
  (let*((depend_file (string+ path "/DEPEND.lisp"))
	(depends (if (probe-file depend_file) (with-fp-r fi depend_file (read fi)) nil))
	(depends-r (if depends (map 'list (lambda (pkg) (eql (apply 'port-pkg2 (append (list pkg) cmd)) 'INSTALLED)) depends) nil))
	(r-depends (if depends-r (eval(append '(and) depends-r)) t))
	(r (if r-depends (apply 'port-pkg1 (append (list path) cmd)) 'INSTALL_DEPEND-ERROR)))
    (format t "~%;;~C[33mINSTALL_DEPEND~C[0m~%~S~%" (code-char 27) (code-char 27) (map 'list (lambda (pkg pkg-r) (list pkg pkg-r)) depends depends-r)) 
    r)
  (let ()
    (format t "~%;;~C[31mPKG-NIL~C[0m~%" (code-char 27) (code-char 27))
    'PKG-NIL)))
