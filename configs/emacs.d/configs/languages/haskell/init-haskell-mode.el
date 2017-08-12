;;; init-haskell-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-haskell-mode-key-bindings ()
  "Set up keybindings for haskell-mode.")

(defun jag--setup-haskell-mode-config ()
  "Set up personal configuation for haskell-mode.")

(defun jag--load-haskell-mode-requires ()
  "Load required sub packages for haskell-mode.")

(use-package haskell-mode
  :ensure t
  :config
  (jag--load-haskell-mode-requires)
  (jag--set-haskell-mode-key-bindings)
  (jag--setup-haskell-mode-config))

(provide 'init-haskell-mode)
;;; init-haskell-mode.el ends here
