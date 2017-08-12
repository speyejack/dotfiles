;;; init-helm-hoogle.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-hoogle-key-bindings ()
  "Set up keybindings for helm-hoogle.")

(defun jag--setup-helm-hoogle-config ()
  "Set up personal configuation for helm-hoogle.")

(defun jag--load-helm-hoogle-requires ()
  "Load required sub packages for helm-hoogle.")

(use-package helm-hoogle
  :ensure t
  :config
  (jag--load-helm-hoogle-requires)
  (jag--set-helm-hoogle-key-bindings)
  (jag--setup-helm-hoogle-config))

(provide 'init-helm-hoogle)
;;; init-helm-hoogle.el ends here
