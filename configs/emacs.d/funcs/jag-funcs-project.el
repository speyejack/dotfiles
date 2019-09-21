;;; jag-funcs-project.el --- Functions for project

;;; Commentary:

;;; Code:


(defun jag-helm-projectile-search (&optional options)
  "Search the project with either rg, ag, ack or grep using OPTIONS."
  (interactive)
  (if (executable-find "rg")
	  (helm-projectile-rg)
	(if (executable-find "ag")
		(helm-projectile-ag)
	  (if (executable-find "grep")
		  (helm-projectile-grep)
		(helm-projectile-ack)))))


(provide 'jag-funcs-project)
;;; jag-funcs-project.el ends here
