;;; init-company-emacs-eclim.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-company-emacs-eclim-hooks ()
  "Add hooks to company-emacs-eclim."
  (jag--add-company-emacs-eclim-key-hooks)
  (jag--add-company-emacs-eclim-other-hooks))

(defun jag--add-company-emacs-eclim-key-hooks ()
  "Add keyboard hooks to company-emacs-eclim.")

(defun jag--add-company-emacs-eclim-other-hooks ()
  "Add other hooks to company-emacs-eclim.")

(defun jag--set-company-emacs-eclim-key-bindings ()
  "Set up keybindings for company-emacs-eclim.")

(defun jag--setup-company-emacs-eclim-config ()
  "Set up personal configuation for company-emacs-eclim.")

(defun jag--load-company-emacs-eclim-requires ()
  "Load required sub packages for company-emacs-eclim.")

(use-package company-emacs-eclim
  :init
  (jag--load-company-emacs-eclim-requires)
  (jag--add-company-emacs-eclim-hooks)
  :ensure t
  :config
  (jag--set-company-emacs-eclim-key-bindings)
  (jag--setup-company-emacs-eclim-config))

(provide 'init-company-emacs-eclim)
;;; init-company-emacs-eclim.el ends here