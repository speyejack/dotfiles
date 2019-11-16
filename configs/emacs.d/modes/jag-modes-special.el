;;; jag-modes-special.el --- Config for mode special

;;; Commentary:

;;; Code:

(use-package jag-funcs-special
  :ensure nil
  :bind
  (:map special-mode-map
   ("j" . 'scroll-down-command)
   ("k" . 'scroll-up-command)))

(provide 'jag-modes-special)
;;; jag-modes-special.el ends here
