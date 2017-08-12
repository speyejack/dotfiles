;;; init-skewer-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-skewer-mode-key-bindings ()
  "Set up keybindings for skewer-mode.")

(defun jag--setup-skewer-mode-config ()
  "Set up personal configuation for skewer-mode.")

(defun jag--load-skewer-mode-requires ()
  "Load required sub packages for skewer-mode.")

(use-package skewer-mode
  :ensure t
  :config
  (jag--load-skewer-mode-requires)
  (jag--set-skewer-mode-key-bindings)
  (jag--setup-skewer-mode-config))

(provide 'init-skewer-mode)
;;; init-skewer-mode.el ends here
