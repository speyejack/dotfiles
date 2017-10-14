;;; init-powerline-evil.el --- Adds-evil-support-to-powerline
;;; Commentary:

;;; Code:

(defun jag--add-powerline-evil-hooks ()
  "Add hooks to powerline-evil."
  (jag--add-powerline-evil-key-hooks)
  (jag--add-powerline-evil-other-hooks))

(defun jag--add-powerline-evil-key-hooks ()
  "Add key hooks to powerline-evil.")

(defun jag--add-powerline-evil-other-hooks ()
  "Add mode other to powerline-evil.")

(defun jag--set-powerline-evil-key-bindings ()
  "Set up keybindings for powerline-evil.")

(defun jag--setup-powerline-evil-config ()
  "Set up personal configuation for powerline-evil."
  (powerline-default-theme))

(defun jag--load-powerline-evil-requires ()
  "Load required sub packages for powerline-evil.")

(use-package powerline-evil
  :init
  (jag--load-powerline-evil-requires)
  (jag--add-powerline-evil-hooks)
  :ensure t
  :config
  (jag--set-powerline-evil-key-bindings)
  (jag--setup-powerline-evil-config))

(provide 'init-powerline-evil)
;;; init-powerline-evil.el ends here