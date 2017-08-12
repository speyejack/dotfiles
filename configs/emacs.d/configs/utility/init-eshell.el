;;; init-eshell.el --- Emacs-shell
;;; Commentary:

;;; Code:

(defun jag--set-eshell-key-bindings ()
  "Set up keybindings for eshell.")

(defun jag--setup-eshell-config ()
  "Set up personal configuation for eshell.")

(defun jag--load-eshell-requires ()
  "Load required sub packages for eshell."
  (require 'init-esh-help))

(use-package eshell
  :ensure t
  :config
  (jag--load-eshell-requires)
  (jag--set-eshell-key-bindings)
  (jag--setup-eshell-config))

(provide 'init-eshell)
;;; init-eshell.el ends here
