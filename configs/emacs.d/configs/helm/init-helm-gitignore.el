;;; init-helm-gitignore.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-gitignore-hooks ()
  "Add hooks to helm-gitignore."
  (jag--add-helm-gitignore-key-hooks)
  (jag--add-helm-gitignore-other-hooks))

(defun jag--add-helm-gitignore-key-hooks ()
  "Add keyboard hooks to helm-gitignore.")

(defun jag--add-helm-gitignore-other-hooks ()
  "Add other hooks to helm-gitignore.")

(defun jag--set-helm-gitignore-key-bindings ()
  "Set up keybindings for helm-gitignore.")

(defun jag--setup-helm-gitignore-config ()
  "Set up personal configuation for helm-gitignore.")

(defun jag--load-helm-gitignore-requires ()
  "Load required sub packages for helm-gitignore.")

(use-package helm-gitignore
  :init
  (jag--load-helm-gitignore-requires)
  (jag--add-helm-gitignore-hooks)
  :ensure t
  :commands 'helm-gitignore
  :config
  (jag--set-helm-gitignore-key-bindings)
  (jag--setup-helm-gitignore-config))

(provide 'init-helm-gitignore)
;;; init-helm-gitignore.el ends here
