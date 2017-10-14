;;; init-evil-nerd-commenter.el --- Adds-easy-commenting-with-evil-mode
;;; Commentary:

;;; Code:

(defun jag--add-evil-nerd-commenter-hooks ()
  "Add hooks to evil-nerd-commenter."
  (jag--add-evil-nerd-commenter-key-hooks)
  (jag--add-evil-nerd-commenter-other-hooks))

(defun jag--add-evil-nerd-commenter-key-hooks ()
  "Add key hooks to evil-nerd-commenter.")

(defun jag--add-evil-nerd-commenter-other-hooks ()
  "Add mode other to evil-nerd-commenter.")

(defun jag--set-evil-nerd-commenter-key-bindings ()
  "Set up keybindings for evil-nerd-commenter.")

(defun jag--setup-evil-nerd-commenter-config ()
  "Set up personal configuation for evil-nerd-commenter.")

(defun jag--load-evil-nerd-commenter-requires ()
  "Load required sub packages for evil-nerd-commenter.")

(use-package evil-nerd-commenter
  :init
  (jag--load-evil-nerd-commenter-requires)
  (jag--add-evil-nerd-commenter-hooks)
  :ensure t
  :config
  (jag--set-evil-nerd-commenter-key-bindings)
  (jag--setup-evil-nerd-commenter-config))

(provide 'init-evil-nerd-commenter)
;;; init-evil-nerd-commenter.el ends here