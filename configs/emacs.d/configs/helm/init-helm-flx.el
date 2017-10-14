;;; init-helm-flx.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-flx-hooks ()
  "Add hooks to helm-flx."
  (jag--add-helm-flx-key-hooks)
  (jag--add-helm-flx-other-hooks))

(defun jag--add-helm-flx-key-hooks ()
  "Add keyboard hooks to helm-flx.")

(defun jag--add-helm-flx-other-hooks ()
  "Add other hooks to helm-flx.")

(defun jag--set-helm-flx-key-bindings ()
  "Set up keybindings for helm-flx.")

(defun jag--setup-helm-flx-config ()
  "Set up personal configuation for helm-flx.")

(defun jag--load-helm-flx-requires ()
  "Load required sub packages for helm-flx.")

(use-package helm-flx
  :init
  (jag--load-helm-flx-requires)
  (jag--add-helm-flx-hooks)
  :ensure t
  :config
  (jag--set-helm-flx-key-bindings)
  (jag--setup-helm-flx-config))

(provide 'init-helm-flx)
;;; init-helm-flx.el ends here