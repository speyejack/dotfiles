;;; init-livid-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-livid-mode-key-bindings ()
  "Set up keybindings for livid-mode.")

(defun jag--setup-livid-mode-config ()
  "Set up personal configuation for livid-mode.")

(defun jag--load-livid-mode-requires ()
  "Load required sub packages for livid-mode.")

(use-package livid-mode
  :ensure t
  :config
  (jag--load-livid-mode-requires)
  (jag--set-livid-mode-key-bindings)
  (jag--setup-livid-mode-config))

(provide 'init-livid-mode)
;;; init-livid-mode.el ends here
