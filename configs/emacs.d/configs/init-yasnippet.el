;;; init-yasnippet.el --- Package description
;;; Commentary:

;;; Code:

(use-package yasnippet
  :ensure t
  :config
  (require 'yasnippet)
  (yas-global-mode 1)

  (use-package helm-c-yasnippet
	:ensure t
	:config
	(require 'helm-c-yasnippet)))
(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
