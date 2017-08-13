;;; init-powerline-evil.el --- Adds-evil-support-to-powerline
;;; Commentary:

;;; Code:

(defun jag--set-powerline-evil-key-bindings ()
  "Set up keybindings for powerline-evil.")

(defun jag--setup-powerline-evil-config ()
  "Set up personal configuation for powerline-evil."
  (powerline-default-theme))

(defun jag--load-powerline-evil-requires ()
  "Load required sub packages for powerline-evil.")

(use-package powerline-evil
  :ensure t
  :config
  (jag--load-powerline-evil-requires)
  (jag--set-powerline-evil-key-bindings)
  (jag--setup-powerline-evil-config))

(provide 'init-powerline-evil)
;;; init-powerline-evil.el ends here
