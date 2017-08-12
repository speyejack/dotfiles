;;; init-helm-pydoc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-pydoc-key-bindings ()
  "Set up keybindings for helm-pydoc.")

(defun jag--setup-helm-pydoc-config ()
  "Set up personal configuation for helm-pydoc.")

(defun jag--load-helm-pydoc-requires ()
  "Load required sub packages for helm-pydoc.")

(use-package helm-pydoc
  :ensure t
  :config
  (jag--load-helm-pydoc-requires)
  (jag--set-helm-pydoc-key-bindings)
  (jag--setup-helm-pydoc-config))

(provide 'init-helm-pydoc)
;;; init-helm-pydoc.el ends here
