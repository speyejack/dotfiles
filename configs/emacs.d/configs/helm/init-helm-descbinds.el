;;; init-helm-descbinds.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-descbinds-hooks ()
  "Add hooks to helm-descbinds."
  (jag--add-helm-descbinds-key-hooks)
  (jag--add-helm-descbinds-other-hooks))

(defun jag--add-helm-descbinds-key-hooks ()
  "Add key hooks to helm-descbinds.")

(defun jag--add-helm-descbinds-other-hooks ()
  "Add mode other to helm-descbinds.")

(defun jag--set-helm-descbinds-key-bindings ()
  "Set up keybindings for helm-descbinds.")

(defun jag--setup-helm-descbinds-config ()
  "Set up personal configuation for helm-descbinds."
  (helm-descbinds-mode))

(defun jag--load-helm-descbinds-requires ()
  "Load required sub packages for helm-descbinds.")

(use-package helm-descbinds
  :init
  (jag--load-helm-descbinds-requires)
  (jag--add-helm-descbinds-hooks)
  :ensure t
  :config
  (jag--set-helm-descbinds-key-bindings)
  (jag--setup-helm-descbinds-config))

(provide 'init-helm-descbinds)
;;; init-helm-descbinds.el ends here