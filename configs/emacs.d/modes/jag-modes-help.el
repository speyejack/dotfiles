;;; jag-modes-help.el --- Config for mode help

;;; Commentary:

;;; Code:

(use-package jag-funcs-help
  :defer t
  :straight nil)

(use-package help
  :straight nil
  :bind (:map help-mode-map
		 ("SPC" . nil)
		 ("h" . nil)
		 ("j" . nil)
		 ("k" . nil)
		 ("l" . nil)
		 ("g" . nil)
		 ("r" . 'revert-buffer)
		 ("q" . 'kill-this-buffer)
		 ("M-h" . 'help-mode-menu)
		 ("M-j" . 'help-go-forward)
		 ("M-k" . 'help-go-back)
		 ("M-l" . 'push-button))
  :config
  (evil-make-overriding-map help-mode-map))

(provide 'jag-modes-help)
;;; jag-modes-help.el ends here
