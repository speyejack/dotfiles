;;; jag-funcs-org-agenda.el --- Functions for org-agenda

;;; Commentary:

;;; Code:

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

	 ;; Action items
	 (member "action" (org-get-tags))

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

(provide 'jag-funcs-org-agenda)
;;; jag-funcs-org-agenda.el ends here
