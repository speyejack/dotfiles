;;; init-company-anaconda.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-company-anaconda-hooks ()
  "Add hooks to company-anaconda."
  (jag--add-company-anaconda-key-hooks)
  (jag--add-company-anaconda-other-hooks))

(defun jag--add-company-anaconda-key-hooks ()
  "Add key hooks to company-anaconda.")

(defun jag--add-company-anaconda-other-hooks ()
  "Add mode other to company-anaconda.")

(defun jag--set-company-anaconda-key-bindings ()
  "Set up keybindings for company-anaconda.")

(defun jag--setup-company-anaconda-config ()
  "Set up personal configuation for company-anaconda.")

(defun jag--load-company-anaconda-requires ()
  "Load required sub packages for company-anaconda.")

(use-package company-anaconda
  :init
  (jag--load-company-anaconda-requires)
  (jag--add-company-anaconda-hooks)
  :ensure t
  :config
  (jag--set-company-anaconda-key-bindings)
  (jag--setup-company-anaconda-config))

(provide 'init-company-anaconda)
;;; init-company-anaconda.el ends here