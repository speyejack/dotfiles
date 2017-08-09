;;; init-ycmd.el --- Package description
;;; Commentary:

;;; Code:
(use-package ycmd
  :ensure t
  :config
  (require 'ycmd)
  (add-hook 'after-init-hook 'global-ycmd-mode)

  (use-package company-ycmd
	:ensure t
	:config
	(require 'company-ycmd)
	(company-ycmd-setup)))

(provide 'init-ycmd)
;;; init-ycmd.el ends here
