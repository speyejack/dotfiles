;;; init-company-ghci.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-ghci-key-bindings ()
  "Set up keybindings for company-ghci.")

(defun jag--setup-company-ghci-config ()
  "Set up personal configuation for company-ghci.")

(defun jag--load-company-ghci-requires ()
  "Load required sub packages for company-ghci.")

(use-package company-ghci
  :ensure t
  :config
  (jag--load-company-ghci-requires)
  (jag--set-company-ghci-key-bindings)
  (jag--setup-company-ghci-config))

(provide 'init-company-ghci)
;;; init-company-ghci.el ends here
