;;; init-helm-swoop.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-swoop-key-bindings ()
  "Set up keybindings for helm-swoop.")

(defun jag--setup-helm-swoop-config ()
  "Set up personal configuation for helm-swoop.")

(defun jag--load-helm-swoop-requires ()
  "Load required sub packages for helm-swoop.")

(use-package helm-swoop
  :ensure t
  :config
  (jag--load-helm-swoop-requires)
  (jag--set-helm-swoop-key-bindings)
  (jag--setup-helm-swoop-config))

(provide 'init-helm-swoop)
;;; init-helm-swoop.el ends here
