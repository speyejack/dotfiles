;;; init-helm-mode-manager.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-mode-manager-hooks ()
  "Add hooks to helm-mode-manager."
  (jag--add-helm-mode-manager-key-hooks)
  (jag--add-helm-mode-manager-other-hooks))

(defun jag--add-helm-mode-manager-key-hooks ()
  "Add keyboard hooks to helm-mode-manager.")

(defun jag--add-helm-mode-manager-other-hooks ()
  "Add other hooks to helm-mode-manager.")

(defun jag--set-helm-mode-manager-key-bindings ()
  "Set up keybindings for helm-mode-manager.")

(defun jag--setup-helm-mode-manager-config ()
  "Set up personal configuation for helm-mode-manager.")

(defun jag--load-helm-mode-manager-requires ()
  "Load required sub packages for helm-mode-manager.")

(use-package helm-mode-manager
  :init
  (jag--load-helm-mode-manager-requires)
  (jag--add-helm-mode-manager-hooks)
  :ensure t
  :config
  (jag--set-helm-mode-manager-key-bindings)
  (jag--setup-helm-mode-manager-config))

(provide 'init-helm-mode-manager)
;;; init-helm-mode-manager.el ends here