;;; jag-funcs-org-agenda.el --- Functions for org-agenda

;;; Commentary:

;;; Code:
(use-package jag-funcs-org
  :straight nil
  :commands (jag--org-refile))

(defun jag-agenda-list-filter ()
  "The filter used for the list on the main agenda."
  (and
   (not
	(or
	 ;; Deadline thats either (not scheduled and important) or due/overdue
	 (and (org-get-deadline-time (point))
		  (or (<= (org-time-stamp-to-now (org-entry-get (point) "DEADLINE")) 0)
			  (and (not (seq-intersection jag-org-non-critical-deadline-tags (org-get-tags)))
				   (not (org-get-scheduled-time (point))))))

	 ;; Next items
	 (and
	  (org-get-todo-state)
	  (string-match-p "NEXT" (org-get-todo-state))
	  (org-get-scheduled-time (point))
	  (<= (org-time-stamp-to-now
		   (org-entry-get (point) "SCHEDULED")) 1))

	 ;; Repeating item happening today
	 (and (org-get-repeat)
		  (<= (org-time-stamp-to-now
			   (org-entry-get (point) "SCHEDULED")) 0))
	 ))

   (org-entry-end-position)))

(defun jag-agenda-planner-filter ()
  "The filter used for the planner on the main agenda."
  (and
   (not
	(or
	 ;; Only scheduled todos
	 (org-get-scheduled-time (point))

	 ;; Events 7 days out
	 (and (seq-intersection jag-org-non-critical-deadline-tags
							(org-get-tags))
		  (<= (org-time-stamp-to-now
			   (org-entry-get (point) "DEADLINE")) 7))

	 ))
   (org-entry-end-position)))

(defun jag-org-agenda-refile ()
  "Refile gtd files in agenda unless outside inbox, then refile normally."
  (interactive)
  (jag--org-refile jag-org-refile-min-targets
				   'org-agenda-refile
				   'jag-parent-refile-verify
				   (lambda () (identity t))))

(defun jag-org-agenda-refile-all ()
  "Similar to `jag-org-agenda-refile' expect operates with more included targets."
  (interactive)
  (jag--org-refile jag-org-refile-max-targets
				   'org-agenda-refile
				   nil
				   (lambda () (identity t))))

(defun jag-org-agenda-refile-inbox ()
  "Process inbox item in agenda mode."
  (interactive)
  (org-with-wide-buffer
   (org-agenda-set-tags)
   (org-agenda-set-effort)
   (jag-org-agenda-refile)))

(provide 'jag-funcs-org-agenda)
;;; jag-funcs-org-agenda.el ends here
