;;; init-haskell-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-haskell-mode-hooks ()
  "Add hooks to haskell-mode."
  (jag--add-haskell-mode-key-hooks)
  (jag--add-haskell-mode-other-hooks))

(defun jag--add-haskell-mode-key-hooks ()
  "Add keyboard hooks to haskell-mode.")

(defun jag--add-haskell-mode-other-hooks ()
  "Add other hooks to haskell-mode.")

(defun jag--set-haskell-mode-key-bindings ()
  "Set up keybindings for haskell-mode.")

(defun jag--setup-haskell-mode-config ()
  "Set up personal configuation for haskell-mode.")

(defun jag--load-haskell-mode-requires ()
  "Load required sub packages for haskell-mode.")

(use-package haskell-mode
  :init
  (jag--load-haskell-mode-requires)
  (jag--add-haskell-mode-hooks)
  :ensure t
  :config
  (jag--set-haskell-mode-key-bindings)
  (jag--setup-haskell-mode-config))

(provide 'init-haskell-mode)
;;; init-haskell-mode.el ends here