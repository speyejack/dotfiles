;;; init-helm-projectile.el --- Use projectile with helm
;;; Commentary:

;;; Code:

(defun jag--add-helm-projectile-hooks ()
  "Add hooks to helm-projectile."
  (jag--add-helm-projectile-key-hooks)
  (jag--add-helm-projectile-other-hooks))

(defun jag--add-helm-projectile-key-hooks ()
  "Add keyboard hooks to helm-projectile.")

(defun jag--add-helm-projectile-other-hooks ()
  "Add other hooks to helm-projectile.")

(defun jag--set-helm-projectile-key-bindings ()
  "Set up keybindings for helm-projectile.")

(defun jag--setup-helm-projectile-config ()
  "Set up personal configuation for helm-projectile."
  (helm-projectile-on))

(defun jag--load-helm-projectile-requires ()
  "Load required sub packages for helm-projectile.")

(use-package helm-projectile
  :init
  (jag--load-helm-projectile-requires)
  (jag--add-helm-projectile-hooks)
  :ensure t
  :commands 'helm-projectile
  :config
  (jag--set-helm-projectile-key-bindings)
  (jag--setup-helm-projectile-config))

(provide 'init-helm-projectile)
;;; init-helm-projectile.el ends here
