;;; init-debug.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-debug-key-bindings ()
  "Set up keybindings for debug.")

(defun jag--setup-debug-config ()
  "Set up personal configuation for debug.")

(defun jag--load-debug-requires ()
  "Load required sub packages for debug.")

(use-package debug
  :ensure t
  :config
  (jag--load-debug-requires)
  (jag--set-debug-key-bindings)
  (jag--setup-debug-config))

(provide 'init-debug)
;;; init-debug.el ends here
