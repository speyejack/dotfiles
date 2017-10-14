;;; init-esh-help.el --- Adds-several-helpful-functions-to-eShell
;;; Commentary:

;;; Code:

(defun jag--add-esh-help-hooks ()
  "Add hooks to esh-help."
  (jag--add-esh-help-key-hooks)
  (jag--add-esh-help-other-hooks))

(defun jag--add-esh-help-key-hooks ()
  "Add key hooks to esh-help.")

(defun jag--add-esh-help-other-hooks ()
  "Add mode other to esh-help.")

(defun jag--set-esh-help-key-bindings ()
  "Set up keybindings for esh-help.")

(defun jag--setup-esh-help-config ()
  "Set up personal configuation for esh-help.")

(defun jag--load-esh-help-requires ()
  "Load required sub packages for esh-help.")

(use-package esh-help
  :init
  (jag--load-esh-help-requires)
  (jag--add-esh-help-hooks)
  :ensure t
  :config
  (jag--set-esh-help-key-bindings)
  (jag--setup-esh-help-config))

(provide 'init-esh-help)
;;; init-esh-help.el ends here