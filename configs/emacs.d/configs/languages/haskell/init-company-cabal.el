;;; init-company-cabal.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-cabal-key-bindings ()
  "Set up keybindings for company-cabal.")

(defun jag--setup-company-cabal-config ()
  "Set up personal configuation for company-cabal.")

(defun jag--load-company-cabal-requires ()
  "Load required sub packages for company-cabal.")

(use-package company-cabal
  :ensure t
  :config
  (jag--load-company-cabal-requires)
  (jag--set-company-cabal-key-bindings)
  (jag--setup-company-cabal-config))

(provide 'init-company-cabal)
;;; init-company-cabal.el ends here
