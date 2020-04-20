;;; jag-funcs-c-c++.el --- Functions for c-c++

;;; Commentary:

;;; Code:

(defun jag-start-realgud-gdb ()
  "Start realgud gdb then send some configurations."
  (interactive)
  (realgud:gdb jag-realgud-gdb-command)
  (realgud-command "set confirm off")
  (realgud-command "break main")
  (realgud-command "run"))


(provide 'jag-funcs-c-c++)
;;; jag-funcs-c-c++.el ends here
