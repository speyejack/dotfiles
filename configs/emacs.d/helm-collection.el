
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)


(use-package evil
  :init (setq evil-want-integration nil)
  :diminish
  :config
  (evil-define-key 'normal global-map (kbd "gh") 'evil-first-non-blank)
  (evil-define-key 'normal global-map (kbd "gl") 'evil-end-of-line)
  (evil-define-key 'normal global-map (kbd "-")  'helm-find-files)
  (setq evil-magic 'very-magic)
  (remove 'doc-view-mode evil-emacs-state-modes)
  (evil-mode 1))


(use-package evil-collection
  :init
  :diminish
  :after evil
  :config 
  (evil-collection-init))

(use-package helm
  :diminish
  :bind
  (("C-x C-F" . helm-find-files)
  ("C-x C-b" . helm-mini)
  ("M-x" . 'helm-M-x))
  :init
  :config
  (helm-mode 1))
