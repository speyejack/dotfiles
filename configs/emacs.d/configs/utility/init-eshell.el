;;; init-eshell.el --- Emacs-shell
;;; Commentary:

;;; Code:

(defun jag--add-eshell-hooks ()
  "Add hooks to eshell."
  (jag--add-eshell-key-hooks)
  (jag--add-eshell-other-hooks))

(defun jag--add-eshell-key-hooks ()
  "Add key hooks to eshell.")

(defun jag--add-eshell-other-hooks ()
  "Add mode other to eshell.")

(defun jag--set-eshell-key-bindings ()
  "Set up keybindings for eshell.")

(defun jag--setup-eshell-config ()
  "Set up personal configuation for eshell.")

(defun jag--load-eshell-requires ()
  "Load required sub packages for eshell."
  (require 'init-esh-help))

(use-package eshell
  :init
  (jag--load-eshell-requires)
  (jag--add-eshell-hooks)
  :ensure t
  :config
  (jag--set-eshell-key-bindings)
  (jag--setup-eshell-config))

(provide 'init-eshell)
;;; init-eshell.el ends here