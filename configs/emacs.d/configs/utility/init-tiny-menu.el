;;; init-tiny-menu.el --- Allows-for-creation-of-mini-menus-bound-to-a-key
;;; Commentary:

;;; Code:

(defun jag--add-tiny-menu-hooks ()
  "Add hooks to tiny-menu."
  (jag--add-tiny-menu-key-hooks)
  (jag--add-tiny-menu-other-hooks))

(defun jag--add-tiny-menu-key-hooks ()
  "Add keyboard hooks to tiny-menu.")

(defun jag--add-tiny-menu-other-hooks ()
  "Add other hooks to tiny-menu.")

(defun jag--set-tiny-menu-key-bindings ()
  "Set up keybindings for tiny-menu.")

(defun jag--setup-tiny-menu-config ()
  "Set up personal configuation for tiny-menu.")

(defun jag--load-tiny-menu-requires ()
  "Load required sub packages for tiny-menu.")

(use-package tiny-menu
  :init
  (jag--load-tiny-menu-requires)
  (jag--add-tiny-menu-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-tiny-menu-key-bindings)
  (jag--setup-tiny-menu-config))

(provide 'init-tiny-menu)
;;; init-tiny-menu.el ends here
