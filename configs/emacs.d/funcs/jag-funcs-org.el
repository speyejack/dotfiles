;;; jag-funcs-org.el --- Functions for org

;;; Commentary:

;;; Code:

(defun jag-fix-org-pdf ()
  "Fix errors with org pdf export."
  (interactive)
  (eshell-command "sudo apt install texlive-latex-extra"))

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

(provide 'jag-funcs-org)
;;; jag-funcs-org.el ends here
