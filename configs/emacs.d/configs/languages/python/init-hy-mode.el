;;; init-hy-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-hy-mode-key-bindings ()
  "Set up keybindings for hy-mode.")

(defun jag--setup-hy-mode-config ()
  "Set up personal configuation for hy-mode.")

(defun jag--load-hy-mode-requires ()
  "Load required sub packages for hy-mode.")

(use-package hy-mode
  :ensure t
  :config
  (jag--load-hy-mode-requires)
  (jag--set-hy-mode-key-bindings)
  (jag--setup-hy-mode-config))

(provide 'init-hy-mode)
;;; init-hy-mode.el ends here
