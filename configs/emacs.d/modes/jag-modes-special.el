;;; jag-modes-special.el --- Config for mode special

;;; Commentary:

;;; Code:

(use-package jag-funcs-special
  :defer t
  :straight nil
  :bind
  (:map special-mode-map
   ("l" . 'forward-char)
   ("h" . 'backward-char)
   ("j" . 'next-line)
   ("k" . 'previous-line)
   ("M-l" . 'push-button)))

(provide 'jag-modes-special)
;;; jag-modes-special.el ends here
