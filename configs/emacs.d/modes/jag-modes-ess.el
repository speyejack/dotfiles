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
 "j" 'polymode-next-chunk-same-type
 "J" 'polymode-next-chunk
 "k" 'polymode-previous-chunk-same-type
 "K" 'polymode-previous-chunk
 "e" 'polymode-eval-chunk
 "M" 'ess-switch-to-end-of-ESS
 "m" 'ess-switch-to-inferior-or-script-buffer
 "n" 'jag-polymode-eval-chunk-and-step
 "N" 'polymode-next-chunk-same-type
 "b" 'polymode-eval-buffer)

(jag-define-leader-keys-for-major-mode
 'inferior-ess-mode
 "m" 'ess-switch-to-inferior-or-script-buffer)


(provide 'jag-modes-ess)
;;; jag-modes-ess.el ends here
