;;; init.el --- Package description
;;; Commentary:

;;; Code:

(package-initialize) ;; You might already have this line

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

(require 'init-elpa)
(require 'user-config)
(require 'init-use-package)

(require 'init-company)
(require 'init-flycheck)
(require 'init-yasnippet)
(require 'init-tiny-menu)
(require 'init-helm)
(require 'init-smartparens)
(require 'init-projectile)
(require 'init-restart-emacs)
(require 'init-semantic)
(require 'init-nlinum)
(require 'init-popwin)

(require 'init-magit)
(require 'init-org)
(require 'init-evil)
(provide 'init)
;;; init.el ends here
