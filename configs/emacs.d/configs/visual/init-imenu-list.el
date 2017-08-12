;;; init-imenu-list.el --- Creates-a-buffer-for-iMenu-(func-defs, etc...)
;;; Commentary:

;;; Code:

(defun jag--set-imenu-list-key-bindings ()
  "Set up keybindings for imenu-list.")

(defun jag--setup-imenu-list-config ()
  "Set up personal configuation for imenu-list.")

(defun jag--load-imenu-list-requires ()
  "Load required sub packages for imenu-list.")

(use-package imenu-list
  :ensure t
  :config
  (jag--load-imenu-list-requires)
  (jag--set-imenu-list-key-bindings)
  (jag--setup-imenu-list-config))

(provide 'init-imenu-list)
;;; init-imenu-list.el ends here
