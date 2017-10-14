;;; init-helm-pydoc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-pydoc-hooks ()
  "Add hooks to helm-pydoc."
  (jag--add-helm-pydoc-key-hooks)
  (jag--add-helm-pydoc-other-hooks))

(defun jag--add-helm-pydoc-key-hooks ()
  "Add key hooks to helm-pydoc.")

(defun jag--add-helm-pydoc-other-hooks ()
  "Add mode other to helm-pydoc.")

(defun jag--set-helm-pydoc-key-bindings ()
  "Set up keybindings for helm-pydoc.")

(defun jag--setup-helm-pydoc-config ()
  "Set up personal configuation for helm-pydoc.")

(defun jag--load-helm-pydoc-requires ()
  "Load required sub packages for helm-pydoc.")

(use-package helm-pydoc
  :init
  (jag--load-helm-pydoc-requires)
  (jag--add-helm-pydoc-hooks)
  :ensure t
  :config
  (jag--set-helm-pydoc-key-bindings)
  (jag--setup-helm-pydoc-config))

(provide 'init-helm-pydoc)
;;; init-helm-pydoc.el ends here