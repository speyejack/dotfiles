;;; init-helm-ag.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-ag-key-bindings ()
  "Set up keybindings for helm-ag.")

(defun jag--setup-helm-ag-config ()
  "Set up personal configuation for helm-ag.")

(defun jag--load-helm-ag-requires ()
  "Load required sub packages for helm-ag.")

(use-package helm-ag
  :ensure t
  :config
  (jag--load-helm-ag-requires)
  (jag--set-helm-ag-key-bindings)
  (jag--setup-helm-ag-config))

(provide 'init-helm-ag)
;;; init-helm-ag.el ends here
