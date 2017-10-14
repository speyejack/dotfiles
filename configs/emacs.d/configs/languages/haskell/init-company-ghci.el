;;; init-company-ghci.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-company-ghci-hooks ()
  "Add hooks to company-ghci."
  (jag--add-company-ghci-key-hooks)
  (jag--add-company-ghci-other-hooks))

(defun jag--add-company-ghci-key-hooks ()
  "Add key hooks to company-ghci.")

(defun jag--add-company-ghci-other-hooks ()
  "Add mode other to company-ghci.")

(defun jag--set-company-ghci-key-bindings ()
  "Set up keybindings for company-ghci.")

(defun jag--setup-company-ghci-config ()
  "Set up personal configuation for company-ghci.")

(defun jag--load-company-ghci-requires ()
  "Load required sub packages for company-ghci.")

(use-package company-ghci
  :init
  (jag--load-company-ghci-requires)
  (jag--add-company-ghci-hooks)
  :ensure t
  :config
  (jag--set-company-ghci-key-bindings)
  (jag--setup-company-ghci-config))

(provide 'init-company-ghci)
;;; init-company-ghci.el ends here