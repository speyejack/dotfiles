;;; init-helm-gitignore.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-gitignore-key-bindings ()
  "Set up keybindings for helm-gitignore.")

(defun jag--setup-helm-gitignore-config ()
  "Set up personal configuation for helm-gitignore.")

(defun jag--load-helm-gitignore-requires ()
  "Load required sub packages for helm-gitignore.")

(use-package helm-gitignore
  :ensure t
  :config
  (jag--load-helm-gitignore-requires)
  (jag--set-helm-gitignore-key-bindings)
  (jag--setup-helm-gitignore-config))

(provide 'init-helm-gitignore)
;;; init-helm-gitignore.el ends here
