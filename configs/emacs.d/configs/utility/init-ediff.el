;;; init-ediff.el --- Easy-diff-between-two-files
;;; Commentary:

;;; Code:

(defun jag--add-ediff-hooks ()
  "Add hooks to ediff."
  (jag--add-ediff-key-hooks)
  (jag--add-ediff-other-hooks))

(defun jag--add-ediff-key-hooks ()
  "Add keyboard hooks to ediff.")

(defun jag--add-ediff-other-hooks ()
  "Add other hooks to ediff.")

(defun jag--set-ediff-key-bindings ()
  "Set up keybindings for ediff.")

(defun jag--setup-ediff-config ()
  "Set up personal configuation for ediff.")

(defun jag--load-ediff-requires ()
  "Load required sub packages for ediff.")

(use-package ediff
  :init
  (jag--load-ediff-requires)
  (jag--add-ediff-hooks)
  :ensure t
  :commands 'ediff-files
  :config
  (jag--set-ediff-key-bindings)
  (jag--setup-ediff-config))

(provide 'init-ediff)
;;; init-ediff.el ends here
