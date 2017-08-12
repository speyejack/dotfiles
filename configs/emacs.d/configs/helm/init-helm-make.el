;;; init-helm-make.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-make-key-bindings ()
  "Set up keybindings for helm-make.")

(defun jag--setup-helm-make-config ()
  "Set up personal configuation for helm-make.")

(defun jag--load-helm-make-requires ()
  "Load required sub packages for helm-make.")

(use-package helm-make
  :ensure t
  :config
  (jag--load-helm-make-requires)
  (jag--set-helm-make-key-bindings)
  (jag--setup-helm-make-config))

(provide 'init-helm-make)
;;; init-helm-make.el ends here
