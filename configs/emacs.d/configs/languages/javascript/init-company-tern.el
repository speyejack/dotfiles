;;; init-company-tern.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-tern-key-bindings ()
  "Set up keybindings for company-tern.")

(defun jag--setup-company-tern-config ()
  "Set up personal configuation for company-tern.")

(defun jag--load-company-tern-requires ()
  "Load required sub packages for company-tern.")

(use-package company-tern
  :ensure t
  :config
  (jag--load-company-tern-requires)
  (jag--set-company-tern-key-bindings)
  (jag--setup-company-tern-config))

(provide 'init-company-tern)
;;; init-company-tern.el ends here
