;;; jag-modes-help.el --- Config for mode help

;;; Commentary:

;;; Code:

(use-package jag-funcs-help
  :ensure nil
  )

(use-package help
  :ensure nil
  :bind (:map help-mode-map
		 ("M-h" . 'help-mode-menu)
		 ("M-j" . 'help-go-forward)
		 ("M-k" . 'help-go-back)))

(provide 'jag-modes-help)
;;; jag-modes-help.el ends here
