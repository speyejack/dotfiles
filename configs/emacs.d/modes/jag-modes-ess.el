;;; jag-modes-ess.el --- Config for mode ess

;;; Commentary:

;;; Code:

(use-package jag-funcs-ess
  :defer t
  :straight nil
  :commands (jag-ess-eval-region jag-polymode-eval-chunk-and-step))

(use-package ess)
(use-package polymode)
(use-package poly-R)

(add-hook 'markdown-mode-hook 'nlinum-relative-mode)

(jag-define-leader-keys-for-major-mode
 'ess-r-mode
 "n" 'jag-polymode-eval-chunk-and-step
 "N" 'polymode-next-chunk-same-type
 "b" 'polymode-eval-buffer)


(provide 'jag-modes-ess)
;;; jag-modes-ess.el ends here
