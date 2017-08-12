;;; init-srefactor.el --- Refactoring-tool
;;; Commentary:

;;; Code:

(defun jag--set-srefactor-key-bindings ()
  "Set up keybindings for srefactor.")

(defun jag--setup-srefactor-config ()
  "Set up personal configuation for srefactor.")

(defun jag--load-srefactor-requires ()
  "Load required sub packages for srefactor.")

(use-package srefactor
  :ensure t
  :config
  (jag--load-srefactor-requires)
  (jag--set-srefactor-key-bindings)
  (jag--setup-srefactor-config))

(provide 'init-srefactor)
;;; init-srefactor.el ends here
