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

(defun jag-org-clock-file (target template &optional goto)
  "Start a capture/clock based on a org header in TARGET using TEMPLATE.

TARGET follows the same structure used in `org-refile-targets'."
  (let* ((org-refile-targets target)
		 (loc (org-refile-get-location))
		 (file (nth 1 loc))
		 (pos (nth 3 loc)))
	(with-current-buffer (or (find-buffer-visiting file)
							 (find-file-noselect file))
	  (save-excursion
		(goto-char pos)
		(call-interactively 'org-store-link)
		(org-capture goto template)))))

(defun jag-add-property-with-date-captured ()
  "Add DATE_CAPTURED property to the current item."
  (interactive)
  (org-set-property "DATE_CAPTURED" (format-time-string "%F")))


(provide 'jag-funcs-org)
;;; jag-funcs-org.el ends here
