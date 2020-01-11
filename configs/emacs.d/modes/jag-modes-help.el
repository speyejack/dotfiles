;;; jag-modes-help.el --- Config for mode help

;;; Commentary:

;;; Code:

(use-package jag-funcs-help
  :defer t
  :ensure nil)

(use-package help
  :ensure nil
  :bind (:map help-mode-map
		 ("h" . nil)
		 ("j" . nil)
		 ("k" . nil)
		 ("l" . nil)
		 ("q" . 'kill-this-buffer)
		 ("M-h" . 'help-mode-menu)
		 ("M-j" . 'help-go-forward)
		 ("M-k" . 'help-go-back))
  :config
  (evil-make-overriding-map help-mode-map))

(provide 'jag-modes-help)
;;; jag-modes-help.el ends here
