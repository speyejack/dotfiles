;;; init-ghc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-ghc-hooks ()
  "Add hooks to ghc."
  (jag--add-ghc-key-hooks)
  (jag--add-ghc-other-hooks))

(defun jag--add-ghc-key-hooks ()
  "Add key hooks to ghc.")

(defun jag--add-ghc-other-hooks ()
  "Add mode other to ghc.")

(defun jag--set-ghc-key-bindings ()
  "Set up keybindings for ghc.")

(defun jag--setup-ghc-config ()
  "Set up personal configuation for ghc.")

(defun jag--load-ghc-requires ()
  "Load required sub packages for ghc.")

(use-package ghc
  :init
  (jag--load-ghc-requires)
  (jag--add-ghc-hooks)
  :ensure t
  :config
  (jag--set-ghc-key-bindings)
  (jag--setup-ghc-config))

(provide 'init-ghc)
;;; init-ghc.el ends here