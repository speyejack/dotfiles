;;; init-company-go.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-company-go-hooks ()
  "Add hooks to company-go."
  (jag--add-company-go-key-hooks)
  (jag--add-company-go-other-hooks))

(defun jag--add-company-go-key-hooks ()
  "Add keyboard hooks to company-go.")

(defun jag--add-company-go-other-hooks ()
  "Add other hooks to company-go.")

(defun jag--set-company-go-key-bindings ()
  "Set up keybindings for company-go.")

(defun jag--setup-company-go-config ()
  "Set up personal configuation for company-go.")

(defun jag--load-company-go-requires ()
  "Load required sub packages for company-go.")

(use-package company-go
  :init
  (jag--load-company-go-requires)
  (jag--add-company-go-hooks)
  :ensure t
  :after company
  :commands 'go-mode
  :config
  (jag--set-company-go-key-bindings)
  (jag--setup-company-go-config))

(provide 'init-company-go)
;;; init-company-go.el ends here
