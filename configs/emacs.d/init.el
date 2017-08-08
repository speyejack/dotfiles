(package-initialize) ;; You might already have this line

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

(require 'init-elpa)
(require 'user-config)
(require 'init-use-package)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(use-package tiny-menu
  :ensure t)

(use-package company
		 :ensure t
		 :config
		 (global-company-mode 1))

(use-package helm
		 :ensure t
		 :config
		 (helm-mode 1))

(use-package smartparens
  :ensure t
  :config
  (smartparens-global-mode 1)
  (require 'smartparens-config))

(require 'init-org)
(require 'init-evil)
(use-package magit
  :ensure t
  :config
  (require 'evil-magit)
  (add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode))
(provide 'init)
;;; init.el ends here