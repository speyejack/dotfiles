;;; init-tern.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-tern-key-bindings ()
  "Set up keybindings for tern.")

(defun jag--setup-tern-config ()
  "Set up personal configuation for tern.")

(defun jag--load-tern-requires ()
  "Load required sub packages for tern.")

(use-package tern
  :ensure t
  :config
  (jag--load-tern-requires)
  (jag--set-tern-key-bindings)
  (jag--setup-tern-config))

(provide 'init-tern)
;;; init-tern.el ends here
