;;; jag-modes-compilation.el --- Config for mode compilation

;;; Commentary:

;;; Code:

(use-package jag-funcs-compilation
  :after compile
  :defer t
  :straight nil
  :bind
  (:map compilation-mode-map
   ("SPC" . nil)
   ("M-h" . 'compilation-previous-file)
   ("M-j" . 'compilation-next-error)
   ("M-k" . 'compilation-previous-error)
   ("M-l" . 'compilation-next-file)))


(provide 'jag-modes-compilation)
;;; jag-modes-compilation.el ends here
