;;; init-smart-mode-line.el --- Another-good-status-bar, may-conflict-with-powerline
;;; Commentary:

;;; Code:

(defun jag--add-smart-mode-line-hooks ()
  "Add hooks to smart-mode-line."
  (jag--add-smart-mode-line-key-hooks)
  (jag--add-smart-mode-line-other-hooks))

(defun jag--add-smart-mode-line-key-hooks ()
  "Add key hooks to smart-mode-line.")

(defun jag--add-smart-mode-line-other-hooks ()
  "Add mode other to smart-mode-line.")

(defun jag--set-smart-mode-line-key-bindings ()
  "Set up keybindings for smart-mode-line.")

(defun jag--setup-smart-mode-line-config ()
  "Set up personal configuation for smart-mode-line.")

(defun jag--load-smart-mode-line-requires ()
  "Load required sub packages for smart-mode-line.")

(use-package smart-mode-line
  :init
  (jag--load-smart-mode-line-requires)
  (jag--add-smart-mode-line-hooks)
  :ensure t
  :config
  (jag--set-smart-mode-line-key-bindings)
  (jag--setup-smart-mode-line-config))

(provide 'init-smart-mode-line)
;;; init-smart-mode-line.el ends here