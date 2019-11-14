;;; jag-funcs-organize.el --- Functions for organize

;;; Commentary:

;;; Code:


(defun jag--quick-org-task-capture ()
  "Capture a task with my default template."
  (interactive)
  (org-capture nil "t"))


(provide 'jag-funcs-organize)
;;; jag-funcs-organize.el ends here
