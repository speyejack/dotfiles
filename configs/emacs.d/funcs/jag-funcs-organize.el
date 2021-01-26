;;; jag-funcs-organize.el --- Functions for organize

;;; Commentary:

;;; Code:

(use-package jag-funcs-org
  :straight nil
  :commands (jag-org-clock-item
			 jag-child-refile-verify
			 jag-org-note-item
			 jag-org-goto-target-item))


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

(defun jag-org-interrupt-capture (&optional goto)
  "Capture a interrupt."
  (interactive "P")
  (org-capture goto "i"))

(defun jag-org-clock-gtd (&optional select)
  "Start a clock on a header in the gtd files."
  (interactive "P")
  (let ((gtd-file (expand-file-name "gtd.org" jag-gtd-dir))
		(inbox-file (expand-file-name "inbox.org" jag-gtd-dir))
		(someday-file (expand-file-name "someday.org" jag-gtd-dir))
		(tickler-file (expand-file-name "tickler.org" jag-gtd-dir)))
	(jag-org-clock-item
	 `((,gtd-file :maxlevel . 5)
	   (,someday-file :maxlevel . 5)
	   (,inbox-file :maxlevel . 5)
	   (,tickler-file :maxlevel . 5))
	 select
	 'jag-child-refile-verify)))

(defun jag-org-note-gtd ()
  "Enter a note on a header in the gtd files."
  (interactive)
  (let ((gtd-file (expand-file-name "gtd.org" jag-gtd-dir))
		(inbox-file (expand-file-name "inbox.org" jag-gtd-dir))
		(someday-file (expand-file-name "someday.org" jag-gtd-dir))
		(tickler-file (expand-file-name "tickler.org" jag-gtd-dir)))
	(jag-org-note-item
	 `((,gtd-file :maxlevel . 5)
	   (,someday-file :maxlevel . 5)
	   (,inbox-file :maxlevel . 5)
	   (,tickler-file :maxlevel . 5))
	 'jag-child-refile-verify)))

(defun jag-org-clock-select-task ()
  "Select a task for org clocking."
  (interactive)
  (org-clock-select-task))

(provide 'jag-funcs-organize)
;;; jag-funcs-organize.el ends here
