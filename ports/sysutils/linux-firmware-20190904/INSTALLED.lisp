(not(equal
  (let ((sr(with-output-to-string(so)(exec so "/bin/ls" "/lib/firmware/"))))
    (format t ";;SHELL LS /lib/firmware/~%~A~%" sr)
    sr)
  ""))
