;;; init-ycmd.el --- Allows-for-better-code-completion
;;; Commentary:

;;; Code:

(defun jag--set-ycmd-key-bindings ()
  "Set up keybindings for ycmd.")

(defun jag--setup-ycmd-config ()
  "Set up personal configuation for ycmd."
  (add-hook 'after-init-hook 'global-ycmd-mode))

(defun jag--load-ycmd-requires ()
  "Load required sub packages for ycmd.")

(use-package ycmd
  :ensure t
  :config
  (jag--load-ycmd-requires)
  (jag--set-ycmd-key-bindings)
  (jag--setup-ycmd-config))

(provide 'init-ycmd)
;;; init-ycmd.el ends here
