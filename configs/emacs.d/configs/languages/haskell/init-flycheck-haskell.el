;;; init-flycheck-haskell.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-flycheck-haskell-key-bindings ()
  "Set up keybindings for flycheck-haskell.")

(defun jag--setup-flycheck-haskell-config ()
  "Set up personal configuation for flycheck-haskell.")

(defun jag--load-flycheck-haskell-requires ()
  "Load required sub packages for flycheck-haskell.")

(use-package flycheck-haskell
  :ensure t
  :config
  (jag--load-flycheck-haskell-requires)
  (jag--set-flycheck-haskell-key-bindings)
  (jag--setup-flycheck-haskell-config))

(provide 'init-flycheck-haskell)
;;; init-flycheck-haskell.el ends here
