;;; init-ghc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-ghc-key-bindings ()
  "Set up keybindings for ghc.")

(defun jag--setup-ghc-config ()
  "Set up personal configuation for ghc.")

(defun jag--load-ghc-requires ()
  "Load required sub packages for ghc.")

(use-package ghc
  :ensure t
  :config
  (jag--load-ghc-requires)
  (jag--set-ghc-key-bindings)
  (jag--setup-ghc-config))

(provide 'init-ghc)
;;; init-ghc.el ends here
