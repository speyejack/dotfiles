;;; jag-funcs-organize.el --- Functions for organize

;;; Commentary:

;;; Code:


(defun jag--quick-org-task-capture (&optional goto)
  "Capture a task with my default template."
  (interactive "P")
  (org-capture goto "t"))

(defun jag-org-file-task-capture (&optional goto)
  "Capture a task with a file or project."
  (interactive "P")
  (if (projectile-project-p)
	  (org-projectile-capture-for-current-project)
	(org-capture goto "h")))

(defun jag-org-clock-in-capture (&optional goto)
  "Capture the name of a clock in and start."
  (interactive "P")
  (org-resolve-clocks)
  (org-capture goto "c"))

(defun jag-org-due-capture (&optional goto)
  "Capture a due date."
  (interactive "P")
  (org-capture goto "d"))

(provide 'jag-funcs-organize)
;;; jag-funcs-organize.el ends here
