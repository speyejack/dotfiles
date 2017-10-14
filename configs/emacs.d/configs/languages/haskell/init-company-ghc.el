;;; init-company-ghc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-company-ghc-hooks ()
  "Add hooks to company-ghc."
  (jag--add-company-ghc-key-hooks)
  (jag--add-company-ghc-other-hooks))

(defun jag--add-company-ghc-key-hooks ()
  "Add keyboard hooks to company-ghc.")

(defun jag--add-company-ghc-other-hooks ()
  "Add other hooks to company-ghc.")

(defun jag--set-company-ghc-key-bindings ()
  "Set up keybindings for company-ghc.")

(defun jag--setup-company-ghc-config ()
  "Set up personal configuation for company-ghc.")

(defun jag--load-company-ghc-requires ()
  "Load required sub packages for company-ghc.")

(use-package company-ghc
  :init
  (jag--load-company-ghc-requires)
  (jag--add-company-ghc-hooks)
  :ensure t
  :config
  (jag--set-company-ghc-key-bindings)
  (jag--setup-company-ghc-config))

(provide 'init-company-ghc)
;;; init-company-ghc.el ends here