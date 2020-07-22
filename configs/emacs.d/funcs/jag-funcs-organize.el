;;; jag-funcs-organize.el --- Functions for organize

;;; Commentary:

;;; Code:

(use-package jag-funcs-org
  :ensure nil
  :commands (jag-org-clock-file
			 jag-child-refile-verify))

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

(defun jag-org-schedule-capture (&optional goto)
  "Capture a schedule date."
  (interactive "P")
  (org-capture goto "s"))

(defun jag-org-interrupt-capture (&optional goto)
  "Capture a interrupt."
  (interactive "P")
  (org-capture goto "i"))

(defun jag-org-journal-capture (&optional goto)
  "Capture a journal."
  (interactive "P")
  (org-capture goto "j"))

(defun jag-org-clock-gtd (&optional goto)
  "Start a clock on a header in the gtd file."
  (interactive "P")
  (let ((gtd-file (expand-file-name "gtd.org" jag-gtd-dir))
		(tickler-file (expand-file-name "tickler.org" jag-gtd-dir)))
	(jag-org-clock-file
	 `((,gtd-file :maxlevel . 3)
	   (,tickler-file :maxlevel . 3)) "v" goto 'jag-child-refile-verify)))

(defun jag-org-clock-select-task ()
  "Select a task for org clocking."
  (interactive)
  (org-clock-select-task))

(provide 'jag-funcs-organize)
;;; jag-funcs-organize.el ends here
