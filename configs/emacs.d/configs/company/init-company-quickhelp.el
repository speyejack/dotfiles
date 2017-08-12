;;; init-company-quickhelp.el --- Pops-up-documentation-for-completion-item
;;; Commentary:

;;; Code:

(defun jag--set-company-quickhelp-key-bindings ()
  "Set up keybindings for company-quickhelp.")

(defun jag--setup-company-quickhelp-config ()
  "Set up personal configuation for company-quickhelp.")

(defun jag--load-company-quickhelp-requires ()
  "Load required sub packages for company-quickhelp.")

(use-package company-quickhelp
  :ensure t
  :config
  (jag--load-company-quickhelp-requires)
  (jag--set-company-quickhelp-key-bindings)
  (jag--setup-company-quickhelp-config))

(provide 'init-company-quickhelp)
;;; init-company-quickhelp.el ends here
