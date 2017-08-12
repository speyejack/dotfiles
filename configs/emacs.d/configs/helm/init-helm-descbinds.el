;;; init-helm-descbinds.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-descbinds-key-bindings ()
  "Set up keybindings for helm-descbinds.")

(defun jag--setup-helm-descbinds-config ()
  "Set up personal configuation for helm-descbinds.")

(defun jag--load-helm-descbinds-requires ()
  "Load required sub packages for helm-descbinds.")

(use-package helm-descbinds
  :ensure t
  :config
  (jag--load-helm-descbinds-requires)
  (jag--set-helm-descbinds-key-bindings)
  (jag--setup-helm-descbinds-config))

(provide 'init-helm-descbinds)
;;; init-helm-descbinds.el ends here
