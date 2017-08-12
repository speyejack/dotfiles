;;; init-company-anaconda.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-company-anaconda-key-bindings ()
  "Set up keybindings for company-anaconda.")

(defun jag--setup-company-anaconda-config ()
  "Set up personal configuation for company-anaconda.")

(defun jag--load-company-anaconda-requires ()
  "Load required sub packages for company-anaconda.")

(use-package company-anaconda
  :ensure t
  :config
  (jag--load-company-anaconda-requires)
  (jag--set-company-anaconda-key-bindings)
  (jag--setup-company-anaconda-config))

(provide 'init-company-anaconda)
;;; init-company-anaconda.el ends here
