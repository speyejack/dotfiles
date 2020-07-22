;;; jag-funcs-org.el --- Functions for org

;;; Commentary:

;;; Code:

(defun jag-fix-org-pdf ()
  "Fix errors with org pdf export."
  (interactive)
  (eshell-command "sudo apt -y install texlive-latex-extra"))

(defun jag-org-open-heading-after-current ()
  "Org insert heading and edit."
  (interactive)
  (org-insert-heading-after-current)
  (evil-append 1))

(defun jag-org-open-heading ()
  "Org insert heading and edit."
  (interactive)
  (org-insert-heading)
  (evil-append 1))

(defun jag-org-archive-done-tasks ()
  "Archive all DONE entries"
  (interactive)
  (org-map-entries
   (lambda ()
	 (org-archive-subtree)
	 (setq org-map-continue-from (outline-previous-heading)))
   "/DONE" 'file))

(defun jag-scale-latex (scale)
  "Set the scale for all org latex images to SCALE."
  (interactive (list (read-number
					  "New scale: "
					  (plist-get org-format-latex-options :scale))))
  (setq org-format-latex-options (plist-put org-format-latex-options :scale scale)))

(defun jag-org-clock-file (target template &optional goto filter-function)
  "Start a capture/clock based on a org header in TARGET using TEMPLATE.

TARGET follows the same structure used in `org-refile-targets'."
  (let* ((org-refile-targets target)
		 (org-refile-target-verify-function filter-function)
		 (loc (org-refile-get-location))
		 (file (nth 1 loc))
		 (pos (nth 3 loc)))
	(with-current-buffer (or (find-buffer-visiting file)
							 (find-file-noselect file))
	  (save-excursion
		(goto-char pos)
		(call-interactively 'org-store-link)
		(org-capture goto template)))))

;; (defun jag-add-property-with-date-captured ()
;;   "Add DATE_CAPTURED property to the current item."
;;   (interactive)
;;   (org-set-property "DATE_CAPTURED" (format-time-string "%F")))

;; Taken from org-journal
(defun jag-org-journal-find-location ()
  ;; Open today's journal, but specify a non-nil prefix argument in order to
  ;; inhibit inserting the heading; org-capture will insert the heading.
  (org-journal-new-entry t)
  ;; Position point on the journal's top-level heading so that org-capture
  ;; will add the new entry as a child entry.
  (goto-char (point-min)))

(defun jag-org-ref-doi-from-url (url)
  "Take in a URL and parse to doi out of it."
  (interactive "P\nbUrl: ")
  (org-ref-url-add-first-doi-entry url))

(defun jag-org-element-is-parent (element)
  "Check if ELEMENT is a parent"
  (save-excursion
	(org-goto-first-child)))

(defun jag-parent-refile-verify ()
  "Check target to see if it is a parent to be included in refile targets."
  (jag-org-element-is-parent (org-element-at-point)))

(defun jag-child-refile-verify ()
  "Check target to see if it is a child to be included in refile targets."
  (not (jag-org-element-is-parent (org-element-at-point))))

(defun jag--org-refile (targets refile filter valid)
  "Refile using REFILE function into TARGETS narrows by FILTER unless VALID function returns nil in which it will use default REFILE function behavior."
  (if (funcall valid)
	  (let ((org-refile-targets targets)
			(org-refile-target-verify-function
			 filter))
		(call-interactively refile))
	(call-interactively refile)))

(defun jag-org-refile ()
  "Refile gtd files unless outside inbox, then refile normally."
  (interactive)
  (jag--org-refile jag-org-refile-min-targets
				   'org-refile
				   'jag-parent-refile-verify
				   (lambda () (member (buffer-file-name) jag-org-refile-files))
				   ))

(defun jag-org-refile-all ()
  "Similar to `jag-org-refile' expect operates with more included targets."
  (interactive)
  (jag--org-refile jag-org-refile-max-targets
				   'org-refile
				   nil
				   (lambda () (member (buffer-file-name) jag-org-refile-files))))

(defun jag-org-refile-inbox ()
  "Process inbox item in inbox file."
  (interactive)
  (org-with-wide-buffer
   (org-set-tags-command)
   (org-set-effort)
   (jag-org-refile)))

(provide 'jag-funcs-org)
;;; jag-funcs-org.el ends here
