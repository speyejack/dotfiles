;;; init-auto-compile.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-auto-compile-key-bindings ()
  "Set up keybindings for auto-compile.")

(defun jag--setup-auto-compile-config ()
  "Set up personal configuation for auto-compile.")

(defun jag--load-auto-compile-requires ()
  "Load required sub packages for auto-compile.")

(use-package auto-compile
  :ensure t
  :config
  (jag--load-auto-compile-requires)
  (jag--set-auto-compile-key-bindings)
  (jag--setup-auto-compile-config))

(provide 'init-auto-compile)
;;; init-auto-compile.el ends here
