;;; init-imenu-list.el --- Creates-a-buffer-for-iMenu-(func-defs, etc...)
;;; Commentary:

;;; Code:

(defun jag--add-imenu-list-hooks ()
  "Add hooks to imenu-list."
  (jag--add-imenu-list-key-hooks)
  (jag--add-imenu-list-other-hooks))

(defun jag--add-imenu-list-key-hooks ()
  "Add keyboard hooks to imenu-list.")

(defun jag--add-imenu-list-other-hooks ()
  "Add other hooks to imenu-list.")

(defun jag--set-imenu-list-key-bindings ()
  "Set up keybindings for imenu-list.")

(defun jag--setup-imenu-list-config ()
  "Set up personal configuation for imenu-list.")

(defun jag--load-imenu-list-requires ()
  "Load required sub packages for imenu-list.")

(use-package imenu-list
  :init
  (jag--load-imenu-list-requires)
  (jag--add-imenu-list-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-imenu-list-key-bindings)
  (jag--setup-imenu-list-config))

(provide 'init-imenu-list)
;;; init-imenu-list.el ends here
