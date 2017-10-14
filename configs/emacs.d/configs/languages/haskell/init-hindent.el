;;; init-hindent.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-hindent-hooks ()
  "Add hooks to hindent."
  (jag--add-hindent-key-hooks)
  (jag--add-hindent-other-hooks))

(defun jag--add-hindent-key-hooks ()
  "Add key hooks to hindent.")

(defun jag--add-hindent-other-hooks ()
  "Add mode other to hindent.")

(defun jag--set-hindent-key-bindings ()
  "Set up keybindings for hindent.")

(defun jag--setup-hindent-config ()
  "Set up personal configuation for hindent.")

(defun jag--load-hindent-requires ()
  "Load required sub packages for hindent.")

(use-package hindent
  :init
  (jag--load-hindent-requires)
  (jag--add-hindent-hooks)
  :ensure t
  :config
  (jag--set-hindent-key-bindings)
  (jag--setup-hindent-config))

(provide 'init-hindent)
;;; init-hindent.el ends here