;;; init-powerline.el --- Adds-vim-powerline-in-place-of-mode-bar-on-bottom-of-the-screen
;;; Commentary:

;;; Code:

(defun jag--add-powerline-hooks ()
  "Add hooks to powerline."
  (jag--add-powerline-key-hooks)
  (jag--add-powerline-other-hooks))

(defun jag--add-powerline-key-hooks ()
  "Add key hooks to powerline.")

(defun jag--add-powerline-other-hooks ()
  "Add mode other to powerline.")

(defun jag--set-powerline-key-bindings ()
  "Set up keybindings for powerline.")

(defun jag--setup-powerline-config ()
  "Set up personal configuation for powerline."
  (setq powerline-default-separator 'wave))

(defun jag--load-powerline-requires ()
  "Load required sub packages for powerline."
  (require 'init-powerline-evil))

(use-package powerline
  :init
  (jag--load-powerline-requires)
  (jag--add-powerline-hooks)
  :ensure t
  :config
  (jag--set-powerline-key-bindings)
  (jag--setup-powerline-config))

(provide 'init-powerline)
;;; init-powerline.el ends here