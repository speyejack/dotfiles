(package-initialize) ;; You might already have this line

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

(require 'init-elpa)
(require 'user-config)
(require 'init-use-package)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(require 'init-company)
(require 'init-flycheck)
(require 'init-yasnippet)
(require 'init-tiny-menu)
(require 'init-helm)
(require 'init-smartparens)

(require 'init-org)
(require 'init-evil)
(use-package magit
  :ensure t
  :config
  (require 'evil-magit)
  (add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode))
(provide 'init)
;;; init.el ends here
