;;; init-evil-nerd-commenter.el --- Adds-easy-commenting-with-evil-mode
;;; Commentary:

;;; Code:

(defun jag--set-evil-nerd-commenter-key-bindings ()
  "Set up keybindings for evil-nerd-commenter.")

(defun jag--setup-evil-nerd-commenter-config ()
  "Set up personal configuation for evil-nerd-commenter.")

(defun jag--load-evil-nerd-commenter-requires ()
  "Load required sub packages for evil-nerd-commenter.")

(use-package evil-nerd-commenter
  :ensure t
  :disabled
  :config
  (jag--load-evil-nerd-commenter-requires)
  (jag--set-evil-nerd-commenter-key-bindings)
  (jag--setup-evil-nerd-commenter-config))

(provide 'init-evil-nerd-commenter)
;;; init-evil-nerd-commenter.el ends here
