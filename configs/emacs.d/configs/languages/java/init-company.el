;;; init-company.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-key-bindings ()
  "Set up keybindings for company.")

(defun jag--setup-company-config ()
  "Set up personal configuation for company.")

(defun jag--load-company-requires ()
  "Load required sub packages for company.")

(use-package company
  :ensure t
  :config
  (jag--load-company-requires)
  (jag--set-company-key-bindings)
  (jag--setup-company-config))

(provide 'init-company)
;;; init-company.el ends here
