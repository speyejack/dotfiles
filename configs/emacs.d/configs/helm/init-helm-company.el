;;; init-helm-company.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-company-hooks ()
  "Add hooks to helm-company."
  (jag--add-helm-company-key-hooks)
  (jag--add-helm-company-other-hooks))

(defun jag--add-helm-company-key-hooks ()
  "Add key hooks to helm-company.")

(defun jag--add-helm-company-other-hooks ()
  "Add mode other to helm-company.")

(defun jag--set-helm-company-key-bindings ()
  "Set up keybindings for helm-company."
  (define-key company-mode-map (kbd "C-:") 'helm-company)
  (define-key company-active-map (kbd "C-:") 'helm-company))

(defun jag--setup-helm-company-config ()
  "Set up personal configuation for helm-company.")

(defun jag--load-helm-company-requires ()
  "Load required sub packages for helm-company.")

(use-package helm-company
  :init
  (jag--load-helm-company-requires)
  (jag--add-helm-company-hooks)
  :ensure t
  :config
  (jag--set-helm-company-key-bindings)
  (jag--setup-helm-company-config))

(provide 'init-helm-company)
;;; init-helm-company.el ends here