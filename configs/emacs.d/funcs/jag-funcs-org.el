;;; jag-funcs-org.el --- Functions for org

;;; Commentary:

;;; Code:

(defun jag-fix-org-pdf ()
  (interactive)
  (eshell-command "sudo apt install texlive-latex-extra"))

(provide 'jag-funcs-org)
;;; jag-funcs-org.el ends here
