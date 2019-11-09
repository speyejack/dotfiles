;;; jag-funcs-realgud.el --- Functions for realgud

;;; Commentary:

;;; Code:


(defun jag-start-realgud-gdb ()
  "Start realgud gdb then send some configurations."
  (interactive)
  (realgud:gdb)
  (realgud-command "set confirm off")
  (realgud-command "break main")
  (realgud-command "run"))

(provide 'jag-funcs-realgud)
;;; jag-funcs-realgud.el ends here
