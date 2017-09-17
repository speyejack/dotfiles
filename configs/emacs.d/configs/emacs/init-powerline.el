;;; init-powerline.el --- Adds-vim-powerline-in-place-of-mode-bar-on-bottom-of-the-screen
;;; Commentary:

;;; Code:

(defun jag--set-powerline-key-bindings ()
  "Set up keybindings for powerline.")

(defun jag--setup-powerline-config ()
  "Set up personal configuation for powerline."
  (setq powerline-default-separator 'wave))

(defun jag--load-powerline-requires ()
  "Load required sub packages for powerline."
  (require 'init-powerline-evil))

(use-package powerline
  :ensure t
  :config
  (jag--load-powerline-requires)
  (jag--set-powerline-key-bindings)
  (jag--setup-powerline-config))

(provide 'init-powerline)
;;; init-powerline.el ends here
