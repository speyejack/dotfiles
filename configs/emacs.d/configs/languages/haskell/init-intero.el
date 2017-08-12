;;; init-intero.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-intero-key-bindings ()
  "Set up keybindings for intero.")

(defun jag--setup-intero-config ()
  "Set up personal configuation for intero.")

(defun jag--load-intero-requires ()
  "Load required sub packages for intero.")

(use-package intero
  :ensure t
  :config
  (jag--load-intero-requires)
  (jag--set-intero-key-bindings)
  (jag--setup-intero-config))

(provide 'init-intero)
;;; init-intero.el ends here
