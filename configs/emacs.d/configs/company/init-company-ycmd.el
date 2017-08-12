;;; init-company-ycmd.el --- Allows-for-company-to-use-Ycmd
;;; Commentary:

;;; Code:

(defun jag--set-company-ycmd-key-bindings ()
  "Set up keybindings for company-ycmd.")

(defun jag--setup-company-ycmd-config ()
  "Set up personal configuation for company-ycmd.")

(defun jag--load-company-ycmd-requires ()
  "Load required sub packages for company-ycmd.")

(use-package company-ycmd
  :ensure t
  :config
  (jag--load-company-ycmd-requires)
  (jag--set-company-ycmd-key-bindings)
  (jag--setup-company-ycmd-config))

(provide 'init-company-ycmd)
;;; init-company-ycmd.el ends here
