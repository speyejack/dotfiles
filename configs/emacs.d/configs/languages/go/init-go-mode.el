;;; init-go-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-go-mode-key-bindings ()
  "Set up keybindings for go-mode.")

(defun jag--setup-go-mode-config ()
  "Set up personal configuation for go-mode.")

(defun jag--load-go-mode-requires ()
  "Load required sub packages for go-mode.")

(use-package go-mode
  :ensure t
  :config
  (jag--load-go-mode-requires)
  (jag--set-go-mode-key-bindings)
  (jag--setup-go-mode-config))

(provide 'init-go-mode)
;;; init-go-mode.el ends here
