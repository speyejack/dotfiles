;;; init-asm-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-asm-mode-key-bindings ()
  "Set up keybindings for asm-mode.")

(defun jag--setup-asm-mode-config ()
  "Set up personal configuation for asm-mode.")

(defun jag--load-asm-mode-requires ()
  "Load required sub packages for asm-mode.")

(use-package asm-mode
  :ensure t
  :config
  (jag--load-asm-mode-requires)
  (jag--set-asm-mode-key-bindings)
  (jag--setup-asm-mode-config))

(provide 'init-asm-mode)
;;; init-asm-mode.el ends here
