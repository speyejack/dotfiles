;;; init-ielm.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-ielm-key-bindings ()
  "Set up keybindings for ielm.")

(defun jag--setup-ielm-config ()
  "Set up personal configuation for ielm.")

(defun jag--load-ielm-requires ()
  "Load required sub packages for ielm.")

(use-package ielm
  :ensure t
  :config
  (jag--load-ielm-requires)
  (jag--set-ielm-key-bindings)
  (jag--setup-ielm-config))

(provide 'init-ielm)
;;; init-ielm.el ends here
