;;; init-ycmd.el --- Allows-for-better-code-completion
;;; Commentary:

;;; Code:

(defun jag--add-ycmd-hooks ()
  "Add hooks to ycmd."
  (jag--add-ycmd-key-hooks)
  (jag--add-ycmd-other-hooks))

(defun jag--add-ycmd-key-hooks ()
  "Add key hooks to ycmd.")

(defun jag--add-ycmd-other-hooks ()
  "Add mode other to ycmd.")

(defun jag--set-ycmd-key-bindings ()
  "Set up keybindings for ycmd.")

(defun jag--setup-ycmd-config ()
  "Set up personal configuation for ycmd.")

(defun jag--load-ycmd-requires ()
  "Load required sub packages for ycmd.")

(use-package ycmd
  :init
  (jag--load-ycmd-requires)
  (jag--add-ycmd-hooks)
  :ensure t
  :config
  (jag--set-ycmd-key-bindings)
  (jag--setup-ycmd-config))

(provide 'init-ycmd)
;;; init-ycmd.el ends here