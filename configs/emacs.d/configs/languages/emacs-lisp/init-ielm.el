;;; init-ielm.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-ielm-hooks ()
  "Add hooks to ielm."
  (jag--add-ielm-key-hooks)
  (jag--add-ielm-other-hooks))

(defun jag--add-ielm-key-hooks ()
  "Add key hooks to ielm.")

(defun jag--add-ielm-other-hooks ()
  "Add mode other to ielm.")

(defun jag--set-ielm-key-bindings ()
  "Set up keybindings for ielm.")

(defun jag--setup-ielm-config ()
  "Set up personal configuation for ielm.")

(defun jag--load-ielm-requires ()
  "Load required sub packages for ielm.")

(use-package ielm
  :init
  (jag--load-ielm-requires)
  (jag--add-ielm-hooks)
  :ensure t
  :config
  (jag--set-ielm-key-bindings)
  (jag--setup-ielm-config))

(provide 'init-ielm)
;;; init-ielm.el ends here