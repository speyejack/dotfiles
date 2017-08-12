;;; init-helm-projectile.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-projectile-key-bindings ()
  "Set up keybindings for helm-projectile.")

(defun jag--setup-helm-projectile-config ()
  "Set up personal configuation for helm-projectile.")

(defun jag--load-helm-projectile-requires ()
  "Load required sub packages for helm-projectile.")

(use-package helm-projectile
  :ensure t
  :config
  (jag--load-helm-projectile-requires)
  (jag--set-helm-projectile-key-bindings)
  (jag--setup-helm-projectile-config))

(provide 'init-helm-projectile)
;;; init-helm-projectile.el ends here
