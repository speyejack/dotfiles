;;; init-hide-comnt.el --- Allows-user-to-hide-comments
;;; Commentary:

;;; Code:

(defun jag--set-hide-comnt-key-bindings ()
  "Set up keybindings for hide-comnt.")

(defun jag--setup-hide-comnt-config ()
  "Set up personal configuation for hide-comnt.")

(defun jag--load-hide-comnt-requires ()
  "Load required sub packages for hide-comnt.")

(use-package hide-comnt
  :ensure t
  :config
  (jag--load-hide-comnt-requires)
  (jag--set-hide-comnt-key-bindings)
  (jag--setup-hide-comnt-config))

(provide 'init-hide-comnt)
;;; init-hide-comnt.el ends here
