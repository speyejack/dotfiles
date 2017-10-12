;;; init-solarized-theme.el --- Adds solarized theme to emacs
;;; Commentary:

;;; Code:

(defun jag--set-solarized-theme-key-bindings ()
  "Set up keybindings for powerline.")

(defun jag--setup-solarized-theme-config ()
  "Set up personal configuation for powerline."
  (load-theme 'solarized-dark t))

(defun jag--load-solarized-theme-requires ()
  "Load required sub packages for powerline.")

(use-package solarized-theme
  :ensure t
  :config
  (jag--load-solarized-theme-requires)
  (jag--set-solarized-theme-key-bindings)
  (jag--setup-solarized-theme-config))

(provide 'init-solarized-theme)
;;; init-solarized-theme.el ends here
