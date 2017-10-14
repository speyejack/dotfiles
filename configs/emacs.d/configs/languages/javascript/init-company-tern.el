;;; init-company-tern.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-company-tern-hooks ()
  "Add hooks to company-tern."
  (jag--add-company-tern-key-hooks)
  (jag--add-company-tern-other-hooks))

(defun jag--add-company-tern-key-hooks ()
  "Add key hooks to company-tern.")

(defun jag--add-company-tern-other-hooks ()
  "Add mode other to company-tern.")

(defun jag--set-company-tern-key-bindings ()
  "Set up keybindings for company-tern.")

(defun jag--setup-company-tern-config ()
  "Set up personal configuation for company-tern.")

(defun jag--load-company-tern-requires ()
  "Load required sub packages for company-tern.")

(use-package company-tern
  :init
  (jag--load-company-tern-requires)
  (jag--add-company-tern-hooks)
  :ensure t
  :config
  (jag--set-company-tern-key-bindings)
  (jag--setup-company-tern-config))

(provide 'init-company-tern)
;;; init-company-tern.el ends here