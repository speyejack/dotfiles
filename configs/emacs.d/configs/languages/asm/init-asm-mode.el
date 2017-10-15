;;; init-asm-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-asm-mode-hooks ()
  "Add hooks to asm-mode."
  (jag--add-asm-mode-key-hooks)
  (jag--add-asm-mode-other-hooks))

(defun jag--add-asm-mode-key-hooks ()
  "Add keyboard hooks to asm-mode.")

(defun jag--add-asm-mode-other-hooks ()
  "Add other hooks to asm-mode.")

(defun jag--set-asm-mode-key-bindings ()
  "Set up keybindings for asm-mode.")

(defun jag--setup-asm-mode-config ()
  "Set up personal configuation for asm-mode.")

(defun jag--load-asm-mode-requires ()
  "Load required sub packages for asm-mode.")

(use-package asm-mode
  :init
  (jag--load-asm-mode-requires)
  (jag--add-asm-mode-hooks)
  :ensure t
  :commands 'asm-mode
  :config
  (jag--set-asm-mode-key-bindings)
  (jag--setup-asm-mode-config))

(provide 'init-asm-mode)
;;; init-asm-mode.el ends here
