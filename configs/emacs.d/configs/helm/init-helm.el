;;; init-helm.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-key-bindings ()
  "Set up keybindings for helm.")

(defun jag--setup-helm-config ()
  "Set up personal configuation for helm.")

(defun jag--load-helm-requires ()
  "Load required sub packages for helm."
  (require 'init-helm-ag)
  (require 'init-helm-c-yasnippet)
  (require 'init-helm-company)
  (require 'init-helm-descbinds)
  (require 'init-helm-flx)
  (require 'init-helm-gitignore)
  (require 'init-helm-gtags)
  (require 'init-helm-make)
  (require 'init-helm-mode-manager)
  (require 'init-helm-projectile)
  (require 'init-helm-swoop))

(use-package helm
  :ensure t
  :config
  (jag--load-helm-requires)
  (jag--set-helm-key-bindings)
  (jag--setup-helm-config))

(provide 'init-helm)
;;; init-helm.el ends here
