;;; init-debug.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-debug-hooks ()
  "Add hooks to debug."
  (jag--add-debug-key-hooks)
  (jag--add-debug-other-hooks))

(defun jag--add-debug-key-hooks ()
  "Add keyboard hooks to debug.")

(defun jag--add-debug-other-hooks ()
  "Add other hooks to debug.")

(defun jag--set-debug-key-bindings ()
  "Set up keybindings for debug.")

(defun jag--setup-debug-config ()
  "Set up personal configuation for debug.")

(defun jag--load-debug-requires ()
  "Load required sub packages for debug.")

(use-package debug
  :init
  (jag--load-debug-requires)
  (jag--add-debug-hooks)
  :ensure t
  :config
  (jag--set-debug-key-bindings)
  (jag--setup-debug-config))

(provide 'init-debug)
;;; init-debug.el ends here