;;; jag-funcs-eshell.el --- Functions for eshell

;;; Commentary:

;;; Code:

(defun jag--jump-eshell-prompt ()
  "Jumps to eshell prompt unless actively in prompt."
  (unless
	  (and eshell-last-output-end
		   (>= (point) eshell-last-output-end))
	(end-of-buffer)
	(eshell-bol)))

(provide 'jag-funcs-eshell)
;;; jag-funcs-eshell.el ends here
