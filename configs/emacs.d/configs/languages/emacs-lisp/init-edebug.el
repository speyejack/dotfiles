;;; init-edebug.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-edebug-key-bindings ()
  "Set up keybindings for edebug.")

(defun jag--setup-edebug-config ()
  "Set up personal configuation for edebug.")

(defun jag--load-edebug-requires ()
  "Load required sub packages for edebug.")

(use-package edebug
  :ensure t
  :config
  (jag--load-edebug-requires)
  (jag--set-edebug-key-bindings)
  (jag--setup-edebug-config))

(provide 'init-edebug)
;;; init-edebug.el ends here
