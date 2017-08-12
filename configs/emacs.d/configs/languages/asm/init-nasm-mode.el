;;; init-nasm-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-nasm-mode-key-bindings ()
  "Set up keybindings for nasm-mode.")

(defun jag--setup-nasm-mode-config ()
  "Set up personal configuation for nasm-mode.")

(defun jag--load-nasm-mode-requires ()
  "Load required sub packages for nasm-mode.")

(use-package nasm-mode
  :ensure t
  :config
  (jag--load-nasm-mode-requires)
  (jag--set-nasm-mode-key-bindings)
  (jag--setup-nasm-mode-config))

(provide 'init-nasm-mode)
;;; init-nasm-mode.el ends here
