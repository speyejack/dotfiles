;;; init-auto-compile.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-auto-compile-hooks ()
  "Add hooks to auto-compile."
  (jag--add-auto-compile-key-hooks)
  (jag--add-auto-compile-other-hooks))

(defun jag--add-auto-compile-key-hooks ()
  "Add keyboard hooks to auto-compile.")

(defun jag--add-auto-compile-other-hooks ()
  "Add other hooks to auto-compile.")

(defun jag--set-auto-compile-key-bindings ()
  "Set up keybindings for auto-compile.")

(defun jag--setup-auto-compile-config ()
  "Set up personal configuation for auto-compile.")

(defun jag--load-auto-compile-requires ()
  "Load required sub packages for auto-compile.")

(use-package auto-compile
  :init
  (jag--load-auto-compile-requires)
  (jag--add-auto-compile-hooks)
  :ensure t
  :config
  (jag--set-auto-compile-key-bindings)
  (jag--setup-auto-compile-config))

(provide 'init-auto-compile)
;;; init-auto-compile.el ends here