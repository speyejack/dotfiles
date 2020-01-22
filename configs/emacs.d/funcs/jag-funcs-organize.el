;;; jag-funcs-organize.el --- Functions for organize

;;; Commentary:

;;; Code:


(defun jag--quick-org-task-capture ()
  "Capture a task with my default template."
  (interactive)
  (org-capture nil "t"))

(defun jag-org-file-task-capture ()
  "Capture a task with a file or project."
  (interactive)
  (if (projectile-project-p)
	  (org-projectile-capture-for-current-project)
	(org-capture nil "h")))

(defun jag-org-clock-in-capture ()
  "Capture the name of a clock in and start."
  (interactive)
  (org-resolve-clocks)
  (org-capture nil "c"))

(defun jag-org-due-capture ()
  "Capture a due date."
  (interactive)
  (org-capture nil "d"))

(provide 'jag-funcs-organize)
;;; jag-funcs-organize.el ends here
