;;; init-helm-swoop.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-swoop-hooks ()
  "Add hooks to helm-swoop."
  (jag--add-helm-swoop-key-hooks)
  (jag--add-helm-swoop-other-hooks))

(defun jag--add-helm-swoop-key-hooks ()
  "Add key hooks to helm-swoop.")

(defun jag--add-helm-swoop-other-hooks ()
  "Add mode other to helm-swoop.")

(defun jag--set-helm-swoop-key-bindings ()
  "Set up keybindings for helm-swoop.")

(defun jag--setup-helm-swoop-config ()
  "Set up personal configuation for helm-swoop.")

(defun jag--load-helm-swoop-requires ()
  "Load required sub packages for helm-swoop.")

(use-package helm-swoop
  :init
  (jag--load-helm-swoop-requires)
  (jag--add-helm-swoop-hooks)
  :ensure t
  :config
  (jag--set-helm-swoop-key-bindings)
  (jag--setup-helm-swoop-config))

(provide 'init-helm-swoop)
;;; init-helm-swoop.el ends here