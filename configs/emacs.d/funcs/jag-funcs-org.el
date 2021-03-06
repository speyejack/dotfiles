;;; jag-funcs-org.el --- Functions for org

;;; Commentary:

;;; Code:
(defun jag-org-goto-project ()
  "Jump to header within GTD directory."
  (interactive)
  (jag-org-goto-target-item jag-org-jump-min-targets nil))

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

(defun jag--org-find-target-item (target &optional filter-function)
  "Find org header found with TARGET and FILTER-FUNCTION.

TARGET follows the same structure used in `org-refile-targets'.
FILTER-FUNCTION is used to filter refile results"
	   (let ((org-refile-targets target)
			 (org-refile-target-verify-function filter-function))
		 (org-refile-get-location)))

(defun jag--org-call-on-target-item (func target &optional filter-function)
  "Call FUNC on org header found with TARGET and FILTER-FUNCTION.

TARGET follows the same structure used in `org-refile-targets'.
FILTER-FUNCTION is used to filter refile results"
  (let* ((loc (jag--org-find-target-item target filter-function))
		 (file (nth 1 loc))
		 (pos (nth 3 loc)))
	(with-current-buffer (or (find-buffer-visiting file)
							 (find-file-noselect file))
	  (save-excursion
		(goto-char pos)
		(funcall func)))))

(defun jag-org-goto-target-item (target &optional filter-function)
  "Goto org header from TARGET and FILTER-FUNCTION to call FUNC on.

TARGET follows the same structure used in `org-refile-targets'.
FILTER-FUNCTION is used to filter refile results
SELECT is passed to org-clock-in"
(let* ((org-refile-targets target)
		 (org-refile-target-verify-function filter-function)
		 (loc (org-refile-get-location))
		 (file (nth 1 loc))
		 (pos (nth 3 loc)))
  (pop-to-buffer (or (find-buffer-visiting file)
					 (find-file-noselect file)))
  (goto-char pos)
  (while (org-invisible-p (point) t)
	(outline-previous-visible-heading 1)
	(show-children)
	(goto-char pos))))

(defun jag-org-note-item (target &optional filter-function)
  "Create a note on an org header in TARGET and FILTER-FUNCTION."
  (jag--org-call-on-target-item
   'org-add-note
   target filter-function))

(defun jag-org-clock-file (target template &optional goto filter-function)
  "Start a capture/clock based on a org header in TARGET using TEMPLATE.

TARGET follows the same structure used in `org-refile-targets'.
GOTO is passed to `org-capture`.
FILTER-FUNCTION is used to filter down targets."
  (jag--org-call-on-target-item
   (lambda ()
	 (call-interactively 'org-store-link)
	 (org-capture goto template))
   target filter-function))

(defun jag-org-clock-item (target &optional select filter-function)
  "Select org header from TARGET and FILTER-FUNCTION to start a clock on.

TARGET follows the same structure used in `org-refile-targets'.
FILTER-FUNCTION is used to filter refile results
SELECT is passed to org-clock-in"
  (jag--org-call-on-target-item
   (lambda ()
	 (org-clock-in select))
   target filter-function))

;; Taken from org-journal
(defun jag-org-journal-find-location ()
  ;; Open today's journal, but specify a non-nil prefix argument in order to
  ;; inhibit inserting the heading; org-capture will insert the heading.
  (org-journal-new-entry t)
  ;; Position point on the journal's top-level heading so that org-capture
  ;; will add the new entry as a child entry.
  (unless (eq org-journal-file-type 'daily)
    (org-narrow-to-subtree))
  (goto-char (point-max)))

(defun jag-org-ref-doi-from-url (url)
  "Take in a URL and parse to doi out of it."
  (interactive "P\nbUrl: ")
  (org-ref-url-add-first-doi-entry url))

(defun jag-org-element-is-parent (element)
  "Check if ELEMENT is a parent."
  (save-excursion
	(org-goto-first-child)))

(defun jag-parent-refile-verify ()
  "Check target to see if it is a parent to be included in refile targets."
  (jag-org-element-is-parent (org-element-at-point)))

(defun jag-child-refile-verify ()
  "Check target to see if it is a child to be included in refile targets."
  (not (jag-org-element-is-parent (org-element-at-point))))

(defun jag--org-refile (targets refile filter valid)
  "Refile using REFILE function into TARGETS narrows by FILTER unless VALID function return nil in which it will use default REFILE function behavior."
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

(defun jag-org-refile-inbox-all ()
  "Process inbox item in inbox file to all places."
  (interactive)
  (org-with-wide-buffer
   (org-set-tags-command)
   (org-set-effort)
   (jag-org-refile-all)))

(defun jag--org-apply-to-parents (func)
  "Apply FUNC to all parent entries."
  (save-excursion
	(while (org-up-heading-safe)
	  (funcall func))))

(defun jag--org-update-parent-stats ()
  "Update all parent statistics cookies."
  (jag--org-apply-to-parents (lambda () (org-update-statistics-cookies nil))))

(defun jag--org-get-effort ()
  "Get effort from org header at position."
  (get-text-property 0 'effort-minutes (org-get-at-bol 'txt)))

(provide 'jag-funcs-org)
;;; jag-funcs-org.el ends here
