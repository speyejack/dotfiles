;;; init-go-rename.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-go-rename-key-bindings ()
  "Set up keybindings for go-rename.")

(defun jag--setup-go-rename-config ()
  "Set up personal configuation for go-rename.")

(defun jag--load-go-rename-requires ()
  "Load required sub packages for go-rename.")

(use-package go-rename
  :ensure t
  :config
  (jag--load-go-rename-requires)
  (jag--set-go-rename-key-bindings)
  (jag--setup-go-rename-config))

(provide 'init-go-rename)
;;; init-go-rename.el ends here
