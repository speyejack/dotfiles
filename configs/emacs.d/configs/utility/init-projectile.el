;;; init-projectile.el --- Allows-for-project-handling
;;; Commentary:

;;; Code:

(defun jag--set-projectile-key-bindings ()
  "Set up keybindings for projectile.")

(defun jag--setup-projectile-config ()
  "Set up personal configuation for projectile."
  (projectile-mode 1))

(defun jag--load-projectile-requires ()
  "Load required sub packages for projectile.")

(use-package projectile
  :ensure t
  :diminish 'projectile-mode
  :config
  (jag--load-projectile-requires)
  (jag--set-projectile-key-bindings)
  (jag--setup-projectile-config))

(provide 'init-projectile)
;;; init-projectile.el ends here
