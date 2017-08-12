;;; init-company-ghc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-ghc-key-bindings ()
  "Set up keybindings for company-ghc.")

(defun jag--setup-company-ghc-config ()
  "Set up personal configuation for company-ghc.")

(defun jag--load-company-ghc-requires ()
  "Load required sub packages for company-ghc.")

(use-package company-ghc
  :ensure t
  :config
  (jag--load-company-ghc-requires)
  (jag--set-company-ghc-key-bindings)
  (jag--setup-company-ghc-config))

(provide 'init-company-ghc)
;;; init-company-ghc.el ends here
