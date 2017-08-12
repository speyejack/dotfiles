;;; init-company-go.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-go-key-bindings ()
  "Set up keybindings for company-go.")

(defun jag--setup-company-go-config ()
  "Set up personal configuation for company-go.")

(defun jag--load-company-go-requires ()
  "Load required sub packages for company-go.")

(use-package company-go
  :ensure t
  :config
  (jag--load-company-go-requires)
  (jag--set-company-go-key-bindings)
  (jag--setup-company-go-config))

(provide 'init-company-go)
;;; init-company-go.el ends here
