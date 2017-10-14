;;; init-helm-ag.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-ag-hooks ()
  "Add hooks to helm-ag."
  (jag--add-helm-ag-key-hooks)
  (jag--add-helm-ag-other-hooks))

(defun jag--add-helm-ag-key-hooks ()
  "Add keyboard hooks to helm-ag.")

(defun jag--add-helm-ag-other-hooks ()
  "Add other hooks to helm-ag.")

(defun jag--set-helm-ag-key-bindings ()
  "Set up keybindings for helm-ag.")

(defun jag--setup-helm-ag-config ()
  "Set up personal configuation for helm-ag.")

(defun jag--load-helm-ag-requires ()
  "Load required sub packages for helm-ag.")

(use-package helm-ag
  :init
  (jag--load-helm-ag-requires)
  (jag--add-helm-ag-hooks)
  :ensure t
  :config
  (jag--set-helm-ag-key-bindings)
  (jag--setup-helm-ag-config))

(provide 'init-helm-ag)
;;; init-helm-ag.el ends here