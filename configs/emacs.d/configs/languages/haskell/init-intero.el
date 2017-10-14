;;; init-intero.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-intero-hooks ()
  "Add hooks to intero."
  (jag--add-intero-key-hooks)
  (jag--add-intero-other-hooks))

(defun jag--add-intero-key-hooks ()
  "Add key hooks to intero.")

(defun jag--add-intero-other-hooks ()
  "Add mode other to intero.")

(defun jag--set-intero-key-bindings ()
  "Set up keybindings for intero.")

(defun jag--setup-intero-config ()
  "Set up personal configuation for intero.")

(defun jag--load-intero-requires ()
  "Load required sub packages for intero.")

(use-package intero
  :init
  (jag--load-intero-requires)
  (jag--add-intero-hooks)
  :ensure t
  :config
  (jag--set-intero-key-bindings)
  (jag--setup-intero-config))

(provide 'init-intero)
;;; init-intero.el ends here