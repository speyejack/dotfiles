;;; init-company.el --- Allows-for-code-completion
;;; Commentary:

;;; Code:

(defun jag--set-company-key-bindings ()
  "Set up keybindings for company."
  (define-key company-active-map (kbd "C-j") 'company-select-next)
  (define-key company-active-map (kbd "C-k") 'company-select-previous)))

(defun jag--setup-company-config ()
  "Set up personal configuation for company."
  (global-company-mode 1))

(defun jag--load-company-requires ()
  "Load required sub packages for company."
  (require 'init-company-quickhelp)
  (require 'init-company-statistics)
  (require 'init-company-ycmd))

(use-package company
  :ensure t
  :config
  (jag--load-company-requires)
  (jag--set-company-key-bindings)
  (jag--setup-company-config))

(provide 'init-company)
;;; init-company.el ends here
