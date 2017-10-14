;;; init-flycheck-haskell.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-flycheck-haskell-hooks ()
  "Add hooks to flycheck-haskell."
  (jag--add-flycheck-haskell-key-hooks)
  (jag--add-flycheck-haskell-other-hooks))

(defun jag--add-flycheck-haskell-key-hooks ()
  "Add key hooks to flycheck-haskell.")

(defun jag--add-flycheck-haskell-other-hooks ()
  "Add mode other to flycheck-haskell.")

(defun jag--set-flycheck-haskell-key-bindings ()
  "Set up keybindings for flycheck-haskell.")

(defun jag--setup-flycheck-haskell-config ()
  "Set up personal configuation for flycheck-haskell.")

(defun jag--load-flycheck-haskell-requires ()
  "Load required sub packages for flycheck-haskell.")

(use-package flycheck-haskell
  :init
  (jag--load-flycheck-haskell-requires)
  (jag--add-flycheck-haskell-hooks)
  :ensure t
  :config
  (jag--set-flycheck-haskell-key-bindings)
  (jag--setup-flycheck-haskell-config))

(provide 'init-flycheck-haskell)
;;; init-flycheck-haskell.el ends here