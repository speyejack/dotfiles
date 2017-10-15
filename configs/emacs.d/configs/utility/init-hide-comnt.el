;;; init-hide-comnt.el --- Allows-user-to-hide-comments
;;; Commentary:

;;; Code:

(defun jag--add-hide-comnt-hooks ()
  "Add hooks to hide-comnt."
  (jag--add-hide-comnt-key-hooks)
  (jag--add-hide-comnt-other-hooks))

(defun jag--add-hide-comnt-key-hooks ()
  "Add keyboard hooks to hide-comnt.")

(defun jag--add-hide-comnt-other-hooks ()
  "Add other hooks to hide-comnt.")

(defun jag--set-hide-comnt-key-bindings ()
  "Set up keybindings for hide-comnt.")

(defun jag--setup-hide-comnt-config ()
  "Set up personal configuation for hide-comnt.")

(defun jag--load-hide-comnt-requires ()
  "Load required sub packages for hide-comnt.")

(use-package hide-comnt
  :init
  (jag--load-hide-comnt-requires)
  (jag--add-hide-comnt-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-hide-comnt-key-bindings)
  (jag--setup-hide-comnt-config))

(provide 'init-hide-comnt)
;;; init-hide-comnt.el ends here
