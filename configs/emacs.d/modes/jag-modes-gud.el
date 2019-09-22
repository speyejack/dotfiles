;;; jag-modes-gud.el ---

;;; Commentary:

;;; Code:

;; Gud
;;
;; Gud configurations
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Starting-GUD.html#Starting-GUD

(use-package jag-funcs-gud
  :ensure nil
  :general
  (:states '(motion)
   :keymaps 'gud-mode-map
   "M-B" 'gud-tbreak
   "M-J" 'gud-down
   "M-K" 'gud-up
   "M-L" 'gud-stepi
   "M-P" 'jag--gud-run-star-expression
   "M-R" 'gud-refresh
   "M-b" 'gud-break
   "M-c" 'gud-cont
   "M-d" 'gud-remove
   "M-e" 'gud-statement
   "M-g" 'gud-jump
   "M-h" 'gud-finish
   "M-i M-a" 'jag--gud-get-arg-vars
   "M-i M-g" 'jag--gud-get-global-vars
   "M-i M-l" 'jag--gud-get-local-vars
   "M-j" 'gud-next
   "M-k" (lambda () ())
   "M-l" 'gud-step
   "M-p" 'gud-print
   "M-q" 'jag-gud-quit
   "M-r" 'gud-run)
  (:states '(insert)
   :keymaps 'gud-mode-map
   "M-j" 'comint-next-input
   "M-k" 'comint-previous-input))

(use-package gud
  :commands 'gud-mode
  :diminish)

(provide 'jag-modes-gud)
;;; jag-modes-gud.el ends here
