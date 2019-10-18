;;; jag-modes-special.el --- Config for mode special

;;; Commentary:

;;; Code:

(use-package jag-funcs-special
  :ensure nil
  )

(use-package special
  :ensure nil
  :general
  (:keymaps 'special-mode-map
   "j" 'scroll-down-command
   "k" 'scroll-up-command))

(provide 'jag-modes-special)
;;; jag-modes-special.el ends here
