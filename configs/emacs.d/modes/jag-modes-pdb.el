;;; jag-modes-pdb.el --- Config for mode pdb

;;; Commentary:

;;; Code:

(use-package jag-funcs-pdb
  :ensure nil
  )

(add-hook 'pdb-mode-hook
		  (lambda ()
			(gud-def jag--gud-get-local-vars "pp locals()" "" "Gets local variables from gud")
			(gud-def jag--gud-get-arg-vars "" "" "Gets arguments variables from gud")
			(gud-def jag--gud-get-global-vars "pp ['{k} = {v}' for k,v in globals().iteritems() if '__' not in k ]"
					 "Gets global variables from gud")
			(gud-def jag--gud-get-class-vars "p dir(%e)" "" "Gets class variables from gud")
			(gud-def jag--gud-run-expression "p %e" "" "Gets evaluated expression from gud")
			(gud-def jag--gud-run-star-expression "p %e" "" "Gets evaluated star expression from gud")))

(provide 'jag-modes-pdb)
;;; jag-modes-pdb.el ends here
