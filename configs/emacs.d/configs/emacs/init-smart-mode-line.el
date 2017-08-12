;;; init-smart-mode-line.el --- Another-good-status-bar, may-conflict-with-powerline
;;; Commentary:

;;; Code:

(defun jag--set-smart-mode-line-key-bindings ()
  "Set up keybindings for smart-mode-line.")

(defun jag--setup-smart-mode-line-config ()
  "Set up personal configuation for smart-mode-line.")

(defun jag--load-smart-mode-line-requires ()
  "Load required sub packages for smart-mode-line.")

(use-package smart-mode-line
  :ensure t
  :config
  (jag--load-smart-mode-line-requires)
  (jag--set-smart-mode-line-key-bindings)
  (jag--setup-smart-mode-line-config))

(provide 'init-smart-mode-line)
;;; init-smart-mode-line.el ends here
