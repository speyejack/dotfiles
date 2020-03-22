;;; jag-funcs-c-c++.el --- Functions for c-c++

;;; Commentary:

;;; Code:

(defcustom jag-realgud-gdb-command
  nil
  "The default command passed to realgud during `jag-start-realgud-gdb'.

Normally for the purpose of being used with dir locals to have a default method of testing a bug."
  :type 'string)

(defun jag-start-realgud-gdb ()
  "Start realgud gdb then send some configurations."
  (interactive)
  (realgud:gdb jag-realgud-gdb-command)
  (realgud-command "set confirm off")
  (realgud-command "break main")
  (realgud-command "run"))


(provide 'jag-funcs-c-c++)
;;; jag-funcs-c-c++.el ends here
