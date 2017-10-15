;;; init-company-ycmd.el --- Allows-for-company-to-use-Ycmd
;;; Commentary:

;;; Code:

(defun jag--add-company-ycmd-hooks ()
  "Add hooks to company-ycmd."
  (jag--add-company-ycmd-key-hooks)
  (jag--add-company-ycmd-other-hooks))

(defun jag--add-company-ycmd-key-hooks ()
  "Add keyboard hooks to company-ycmd.")

(defun jag--add-company-ycmd-other-hooks ()
  "Add other hooks to company-ycmd.")

(defun jag--set-company-ycmd-key-bindings ()
  "Set up keybindings for company-ycmd.")

(defun jag--setup-company-ycmd-config ()
  "Set up personal configuation for company-ycmd."
	(company-ycmd-setup))

(defun jag--load-company-ycmd-requires ()
  "Load required sub packages for company-ycmd.")

(use-package company-ycmd
  :init
  (jag--load-company-ycmd-requires)
  (jag--add-company-ycmd-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-company-ycmd-key-bindings)
  (jag--setup-company-ycmd-config))

(provide 'init-company-ycmd)
;;; init-company-ycmd.el ends here
