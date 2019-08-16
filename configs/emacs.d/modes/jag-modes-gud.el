;;; jag-modes-gud.el ---

;;; Commentary:

;;; Code:

;; Gud
;;
;; Gud configurations
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Starting-GUD.html#Starting-GUD

(use-package gud
  :commands 'gud-mode
  :diminish
  :general
  (:states 'normal
   :keymaps 'gud-mode-map
   "b" 'gud-break
   "r" 'gud-run
   "R" 'gud-refresh
   "l" 'gud-step
   "L" 'gud-stepi
   "j" 'gud-next
   "k" (lambda () ())
   "e" 'gud-statement
   "p" 'gud-print
   "c" 'gud-cont
   "d" 'gud-remove
   "B" 'gud-tbreak
   "K" 'gud-up
   "J" 'gud-down
   "h" 'gud-finish
   "g" 'gud-jump
   "q" 'jag--gud-quit
   "il" 'jag--gud-get-local-vars
   "ia" 'jag--gud-get-arg-vars
   "ig" 'jag--gud-get-global-vars
   "p" 'jag--gud-run-expression
   "P" 'jag--gud-run-star-expression
   )

  :config
  (gud-def jag--gud-quit "quit" "Quits gud")
  (gud-def jag--gud-get-local-vars "info locals" "Gets local variables from gud")
  (gud-def jag--gud-get-arg-vars "info args" "Gets arguments variables from gud")
  (gud-def jag--gud-get-global-vars "info variables" "Gets global variables from gud")
  (gud-def jag--gud-get-class-vars "p *this" "Gets global variables from gud")
  (gud-def jag--gud-run-expression "p %e" "Gets global variables from gud")
  (gud-def jag--gud-run-star-expression "p *(%e)" "Gets global variables from gud")
  )

(provide 'jag-modes-gud)
;;; jag-modes-gud.el ends here
