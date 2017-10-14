;;; init-tern.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-tern-hooks ()
  "Add hooks to tern."
  (jag--add-tern-key-hooks)
  (jag--add-tern-other-hooks))

(defun jag--add-tern-key-hooks ()
  "Add key hooks to tern.")

(defun jag--add-tern-other-hooks ()
  "Add mode other to tern.")

(defun jag--set-tern-key-bindings ()
  "Set up keybindings for tern.")

(defun jag--setup-tern-config ()
  "Set up personal configuation for tern.")

(defun jag--load-tern-requires ()
  "Load required sub packages for tern.")

(use-package tern
  :init
  (jag--load-tern-requires)
  (jag--add-tern-hooks)
  :ensure t
  :config
  (jag--set-tern-key-bindings)
  (jag--setup-tern-config))

(provide 'init-tern)
;;; init-tern.el ends here