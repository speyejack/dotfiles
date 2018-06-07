;;; init-helm-flycheck.el --- Displays-flycheck-error-using-helm
;;; Commentary:

;;; Code:

(defun jag--add-helm-flycheck-hooks ()
  "Add hooks to helm-flycheck."
  (jag--add-helm-flycheck-key-hooks)
  (jag--add-helm-flycheck-other-hooks))

(defun jag--add-helm-flycheck-key-hooks ()
  "Add keyboard hooks to helm-flycheck.")

(defun jag--add-helm-flycheck-other-hooks ()
  "Add other hooks to helm-flycheck.")

(defun jag--set-helm-flycheck-key-bindings ()
  "Set up keybindings for helm-flycheck.")

(defun jag--setup-helm-flycheck-config ()
  "Set up personal configuation for helm-flycheck.")

(defun jag--load-helm-flycheck-requires ()
  "Load required sub packages for helm-flycheck."
  (require 'helm-flycheck))

(use-package helm-flycheck
  :init
  (jag--load-helm-flycheck-requires)
  (jag--add-helm-flycheck-hooks)
  :ensure t
  :after flycheck
  :config
  (jag--set-helm-flycheck-key-bindings)
  (jag--setup-helm-flycheck-config))

(provide 'init-helm-flycheck)
;;; init-helm-flycheck.el ends here
