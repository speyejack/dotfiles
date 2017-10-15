;;; init-nasm-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-nasm-mode-hooks ()
  "Add hooks to nasm-mode."
  (jag--add-nasm-mode-key-hooks)
  (jag--add-nasm-mode-other-hooks))

(defun jag--add-nasm-mode-key-hooks ()
  "Add keyboard hooks to nasm-mode.")

(defun jag--add-nasm-mode-other-hooks ()
  "Add other hooks to nasm-mode.")

(defun jag--set-nasm-mode-key-bindings ()
  "Set up keybindings for nasm-mode.")

(defun jag--setup-nasm-mode-config ()
  "Set up personal configuation for nasm-mode.")

(defun jag--load-nasm-mode-requires ()
  "Load required sub packages for nasm-mode.")

(use-package nasm-mode
  :init
  (jag--load-nasm-mode-requires)
  (jag--add-nasm-mode-hooks)
  :ensure t
  :commands 'nasm-mode
  :config
  (jag--set-nasm-mode-key-bindings)
  (jag--setup-nasm-mode-config))

(provide 'init-nasm-mode)
;;; init-nasm-mode.el ends here
