
;;; init-company.el --- Allows-for-code-completion
;;; Commentary:

;;; Code:

(defun jag--add-company-hooks ()
  "Add hooks to company."
  (jag--add-company-key-hooks)
  (jag--add-company-other-hooks))

(defun jag--add-company-key-hooks ()
  "Add keyboard hooks to company.")

(defun jag--add-company-other-hooks ()
  "Add other hooks to company.")

(defun jag--set-company-key-bindings ()
  "Set up keybindings for company."
  (evil-make-intercept-map company-active-map 'normal)
  (define-key company-active-map (kbd "C-j") 'company-select-next)
  (define-key company-active-map (kbd "C-k") 'company-select-previous))

(defun jag--setup-company-config ()
  "Set up personal configuation for company."
  (global-company-mode 1))

(defun jag--load-company-requires ()
  "Load required sub packages for company."
  (require 'init-company-quickhelp)
  (require 'init-company-statistics)
  (require 'init-company-ycmd))

(use-package company
  :init
  (jag--load-company-requires)
  (jag--add-company-hooks)
  :ensure t
  :diminish 'company-mode
  :defer t
  :config
  (jag--set-company-key-bindings)
  (jag--setup-company-config))

(provide 'init-company)
;;; init-company.el ends here
