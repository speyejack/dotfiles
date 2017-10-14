;;; init-edebug.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-edebug-hooks ()
  "Add hooks to edebug."
  (jag--add-edebug-key-hooks)
  (jag--add-edebug-other-hooks))

(defun jag--add-edebug-key-hooks ()
  "Add keyboard hooks to edebug.")

(defun jag--add-edebug-other-hooks ()
  "Add other hooks to edebug.")

(defun jag--set-edebug-key-bindings ()
  "Set up keybindings for edebug.")

(defun jag--setup-edebug-config ()
  "Set up personal configuation for edebug.")

(defun jag--load-edebug-requires ()
  "Load required sub packages for edebug.")

(use-package edebug
  :init
  (jag--load-edebug-requires)
  (jag--add-edebug-hooks)
  :ensure t
  :config
  (jag--set-edebug-key-bindings)
  (jag--setup-edebug-config))

(provide 'init-edebug)
;;; init-edebug.el ends here