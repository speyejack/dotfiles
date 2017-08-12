;;; init-helm-flx.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-flx-key-bindings ()
  "Set up keybindings for helm-flx.")

(defun jag--setup-helm-flx-config ()
  "Set up personal configuation for helm-flx.")

(defun jag--load-helm-flx-requires ()
  "Load required sub packages for helm-flx.")

(use-package helm-flx
  :ensure t
  :config
  (jag--load-helm-flx-requires)
  (jag--set-helm-flx-key-bindings)
  (jag--setup-helm-flx-config))

(provide 'init-helm-flx)
;;; init-helm-flx.el ends here
