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

(require 'init-magit)
(require 'init-org)
(require 'init-evil)
(provide 'init)
;;; init.el ends here
