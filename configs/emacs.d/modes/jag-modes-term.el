;;; jag-modes-term.el --- Config for mode term

;;; Commentary:

;;; Code:

(use-package jag-funcs-term
  :ensure nil
  )

(use-package term
  :ensure nil
  :config
  (evil-define-key '(motion normal) term-raw-map
	(kbd "M-h") 'term-send-left
	(kbd "M-j") 'term-send-down
	(kbd "M-k") 'term-send-up
	(kbd "M-l") 'term-send-right))

(provide 'jag-modes-term)
;;; jag-modes-term.el ends here
