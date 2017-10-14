;;; init-projectile.el --- Allows-for-project-handling
;;; Commentary:

;;; Code:

(defun jag--add-projectile-hooks ()
  "Add hooks to projectile."
  (jag--add-projectile-key-hooks)
  (jag--add-projectile-other-hooks))

(defun jag--add-projectile-key-hooks ()
  "Add key hooks to projectile.")

(defun jag--add-projectile-other-hooks ()
  "Add mode other to projectile.")

(defun jag--set-projectile-key-bindings ()
  "Set up keybindings for projectile.")

(defun jag--setup-projectile-config ()
  "Set up personal configuation for projectile."
  (setq projectile-completion-system 'helm)
  (projectile-mode 1))

(defun jag--load-projectile-requires ()
  "Load required sub packages for projectile.")

(use-package projectile
  :init
  (jag--load-projectile-requires)
  (jag--add-projectile-hooks)
  :ensure t
  :diminish 'projectile-mode
  :config
  (jag--set-projectile-key-bindings)
  (jag--setup-projectile-config))

(provide 'init-projectile)
;;; init-projectile.el ends here