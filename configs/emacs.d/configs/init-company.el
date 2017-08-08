;;; init-company.el --- Package description
;;; Commentary:

;;; Code:

(use-package company
		 :ensure t
		 :config
		 (global-company-mode 1)

		 (use-package helm-company
		   :ensure t
		   :config
		   
		   (define-key company-mode-map (kbd "C-:") 'helm-company)
		   (define-key company-active-map (kbd "C-:") 'helm-company))

		 (use-package company-quickhelp
		   :ensure t
		   :config
		   (company-quickhelp-mode 1))

		 ; TODO double check this is working
		 (use-package company-statistics
		   :ensure t
		   :config
		   (require 'company-statistics)
		   (company-statistics-mode 1))
		 )

(provide 'init-company)
;;; init-company.el ends here
