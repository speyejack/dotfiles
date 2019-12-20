;;; jag-modes-gdb.el --- Config for mode gdb

;;; Commentary:

;;; Code:

(use-package jag-funcs-gdb
  :defer t
  :ensure nil)

(setq gdb-show-main t)
(add-hook 'gdb-mode-hook
		  (lambda ()
			(gud-def jag--gud-quit "quit" "" "Quits gud")
			(gud-def jag--gud-get-local-vars "info locals" "" "Gets local variables from gud")
			(gud-def jag--gud-get-arg-vars "info args" "" "Gets arguments variables from gud")
			(gud-def jag--gud-get-global-vars "info variables" "" "Gets global variables from gud")
			(gud-def jag--gud-get-class-vars "p *this" "" "Gets class variables from gud")
			(gud-def jag--gud-run-expression "p %e" "" "Gets evaluated expression from gud")
			(gud-def jag--gud-run-star-expression "p *(%e)" "" "Gets evaluated star expression from gud")))

(provide 'jag-modes-gdb)
;;; jag-modes-gdb.el ends here
