;;; init-flycheck.el --- Package description
;;; Commentary:

;;; Code:
(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode 1)
  (use-package flycheck-pos-tip
	:ensure t
	:config
	(flycheck-pos-tip-mode)))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
