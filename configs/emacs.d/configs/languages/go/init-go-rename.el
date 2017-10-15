;;; init-go-rename.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-go-rename-hooks ()
  "Add hooks to go-rename."
  (jag--add-go-rename-key-hooks)
  (jag--add-go-rename-other-hooks))

(defun jag--add-go-rename-key-hooks ()
  "Add keyboard hooks to go-rename.")

(defun jag--add-go-rename-other-hooks ()
  "Add other hooks to go-rename.")

(defun jag--set-go-rename-key-bindings ()
  "Set up keybindings for go-rename.")

(defun jag--setup-go-rename-config ()
  "Set up personal configuation for go-rename.")

(defun jag--load-go-rename-requires ()
  "Load required sub packages for go-rename.")

(use-package go-rename
  :init
  (jag--load-go-rename-requires)
  (jag--add-go-rename-hooks)
  :ensure t
  :commands 'go-mode
  :config
  (jag--set-go-rename-key-bindings)
  (jag--setup-go-rename-config))

(provide 'init-go-rename)
;;; init-go-rename.el ends here
