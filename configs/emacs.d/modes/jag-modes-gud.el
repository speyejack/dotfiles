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
  :commands 'jag-gud-quit)

(use-package gud
  :commands 'gud-mode
  :diminish
  :config
  (evil-define-key '(motion normal) 'gud-mode-map
   (kbd "M-B") 'gud-tbreak
   (kbd "M-J") 'gud-down
   (kbd "M-K") 'gud-up
   (kbd "M-L") 'gud-stepi
   (kbd "M-P") 'jag--gud-run-star-expression
   (kbd "M-R") 'gud-refresh
   (kbd "M-b") 'gud-break
   (kbd "M-c") 'gud-cont
   (kbd "M-d") 'gud-remove
   (kbd "M-e") 'gud-statement
   (kbd "M-g") 'gud-jump
   (kbd "M-h") 'gud-finish
   (kbd "M-i M-a") 'jag--gud-get-arg-vars
   (kbd "M-i M-g") 'jag--gud-get-global-vars
   (kbd "M-i M-l") 'jag--gud-get-local-vars
   (kbd "M-j") 'gud-next
   (kbd "M-k") (lambda () ())
   (kbd "M-l") 'gud-step
   (kbd "M-p") 'gud-print
   (kbd "M-q") 'jag--gud-quit
   (kbd "M-r") 'gud-run)
  (evil-define-key '(insert) 'gud-mode-map
   (kbd "M-j") 'comint-next-input
   (kbd "M-k") 'comint-previous-input))

(provide 'jag-modes-gud)
;;; jag-modes-gud.el ends here
