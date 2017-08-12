;;; init-coffee-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-coffee-mode-key-bindings ()
  "Set up keybindings for coffee-mode.")

(defun jag--setup-coffee-mode-config ()
  "Set up personal configuation for coffee-mode.")

(defun jag--load-coffee-mode-requires ()
  "Load required sub packages for coffee-mode.")

(use-package coffee-mode
  :ensure t
  :config
  (jag--load-coffee-mode-requires)
  (jag--set-coffee-mode-key-bindings)
  (jag--setup-coffee-mode-config))

(provide 'init-coffee-mode)
;;; init-coffee-mode.el ends here
