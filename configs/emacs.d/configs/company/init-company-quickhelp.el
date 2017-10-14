;;; init-company-quickhelp.el --- Pops-up-documentation-for-completion-item
;;; Commentary:

;;; Code:

(defun jag--add-company-quickhelp-hooks ()
  "Add hooks to company-quickhelp."
  (jag--add-company-quickhelp-key-hooks)
  (jag--add-company-quickhelp-other-hooks))

(defun jag--add-company-quickhelp-key-hooks ()
  "Add key hooks to company-quickhelp.")

(defun jag--add-company-quickhelp-other-hooks ()
  "Add mode other to company-quickhelp.")

(defun jag--set-company-quickhelp-key-bindings ()
  "Set up keybindings for company-quickhelp.")

(defun jag--setup-company-quickhelp-config ()
  "Set up personal configuation for company-quickhelp."
  (company-quickhelp-mode 1))

(defun jag--load-company-quickhelp-requires ()
  "Load required sub packages for company-quickhelp.")

(use-package company-quickhelp
  :init
  (jag--load-company-quickhelp-requires)
  (jag--add-company-quickhelp-hooks)
  :ensure t
  :config
  (jag--set-company-quickhelp-key-bindings)
  (jag--setup-company-quickhelp-config))

(provide 'init-company-quickhelp)
;;; init-company-quickhelp.el ends here