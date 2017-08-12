;;; init-hindent.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-hindent-key-bindings ()
  "Set up keybindings for hindent.")

(defun jag--setup-hindent-config ()
  "Set up personal configuation for hindent.")

(defun jag--load-hindent-requires ()
  "Load required sub packages for hindent.")

(use-package hindent
  :ensure t
  :config
  (jag--load-hindent-requires)
  (jag--set-hindent-key-bindings)
  (jag--setup-hindent-config))

(provide 'init-hindent)
;;; init-hindent.el ends here
