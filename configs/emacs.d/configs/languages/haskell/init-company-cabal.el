;;; init-company-cabal.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-company-cabal-hooks ()
  "Add hooks to company-cabal."
  (jag--add-company-cabal-key-hooks)
  (jag--add-company-cabal-other-hooks))

(defun jag--add-company-cabal-key-hooks ()
  "Add key hooks to company-cabal.")

(defun jag--add-company-cabal-other-hooks ()
  "Add mode other to company-cabal.")

(defun jag--set-company-cabal-key-bindings ()
  "Set up keybindings for company-cabal.")

(defun jag--setup-company-cabal-config ()
  "Set up personal configuation for company-cabal.")

(defun jag--load-company-cabal-requires ()
  "Load required sub packages for company-cabal.")

(use-package company-cabal
  :init
  (jag--load-company-cabal-requires)
  (jag--add-company-cabal-hooks)
  :ensure t
  :config
  (jag--set-company-cabal-key-bindings)
  (jag--setup-company-cabal-config))

(provide 'init-company-cabal)
;;; init-company-cabal.el ends here