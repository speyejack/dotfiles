;;; init-ediff.el --- Easy-diff-between-two-files
;;; Commentary:

;;; Code:

(defun jag--set-ediff-key-bindings ()
  "Set up keybindings for ediff.")

(defun jag--setup-ediff-config ()
  "Set up personal configuation for ediff.")

(defun jag--load-ediff-requires ()
  "Load required sub packages for ediff.")

(use-package ediff
  :ensure t
  :config
  (jag--load-ediff-requires)
  (jag--set-ediff-key-bindings)
  (jag--setup-ediff-config))

(provide 'init-ediff)
;;; init-ediff.el ends here
