;;; init-esh-help.el --- Adds-several-helpful-functions-to-eShell
;;; Commentary:

;;; Code:

(defun jag--set-esh-help-key-bindings ()
  "Set up keybindings for esh-help.")

(defun jag--setup-esh-help-config ()
  "Set up personal configuation for esh-help.")

(defun jag--load-esh-help-requires ()
  "Load required sub packages for esh-help.")

(use-package esh-help
  :ensure t
  :config
  (jag--load-esh-help-requires)
  (jag--set-esh-help-key-bindings)
  (jag--setup-esh-help-config))

(provide 'init-esh-help)
;;; init-esh-help.el ends here
