;;; init-helm-mode-manager.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-mode-manager-key-bindings ()
  "Set up keybindings for helm-mode-manager.")

(defun jag--setup-helm-mode-manager-config ()
  "Set up personal configuation for helm-mode-manager.")

(defun jag--load-helm-mode-manager-requires ()
  "Load required sub packages for helm-mode-manager.")

(use-package helm-mode-manager
  :ensure t
  :config
  (jag--load-helm-mode-manager-requires)
  (jag--set-helm-mode-manager-key-bindings)
  (jag--setup-helm-mode-manager-config))

(provide 'init-helm-mode-manager)
;;; init-helm-mode-manager.el ends here
