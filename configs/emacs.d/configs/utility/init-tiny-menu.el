;;; init-tiny-menu.el --- Allows-for-creation-of-mini-menus-bound-to-a-key
;;; Commentary:

;;; Code:

(defun jag--set-tiny-menu-key-bindings ()
  "Set up keybindings for tiny-menu.")

(defun jag--setup-tiny-menu-config ()
  "Set up personal configuation for tiny-menu.")

(defun jag--load-tiny-menu-requires ()
  "Load required sub packages for tiny-menu.")

(use-package tiny-menu
  :ensure t
  :config
  (jag--load-tiny-menu-requires)
  (jag--set-tiny-menu-key-bindings)
  (jag--setup-tiny-menu-config))

(provide 'init-tiny-menu)
;;; init-tiny-menu.el ends here
