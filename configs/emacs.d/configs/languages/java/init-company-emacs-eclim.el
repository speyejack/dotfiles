;;; init-company-emacs-eclim.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-emacs-eclim-key-bindings ()
  "Set up keybindings for company-emacs-eclim.")

(defun jag--setup-company-emacs-eclim-config ()
  "Set up personal configuation for company-emacs-eclim.")

(defun jag--load-company-emacs-eclim-requires ()
  "Load required sub packages for company-emacs-eclim.")

(use-package company-emacs-eclim
  :ensure t
  :config
  (jag--load-company-emacs-eclim-requires)
  (jag--set-company-emacs-eclim-key-bindings)
  (jag--setup-company-emacs-eclim-config))

(provide 'init-company-emacs-eclim)
;;; init-company-emacs-eclim.el ends here
