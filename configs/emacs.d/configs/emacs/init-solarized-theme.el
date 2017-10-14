;;; init-solarized-theme.el --- Adds solarized theme to emacs
;;; Commentary:

;;; Code:

(defun jag--add-solarized-theme-hooks ()
  "Add hooks to solarized-theme."
  (jag--add-solarized-theme-key-hooks)
  (jag--add-solarized-theme-other-hooks))

(defun jag--add-solarized-theme-key-hooks ()
  "Add keyboard hooks to solarized-theme.")

(defun jag--add-solarized-theme-other-hooks ()
  "Add other hooks to solarized-theme.")

(defun jag--set-solarized-theme-key-bindings ()
  "Set up keybindings for powerline.")

(defun jag--setup-solarized-theme-config ()
  "Set up personal configuation for powerline."
  (load-theme 'solarized-dark t))

(defun jag--load-solarized-theme-requires ()
  "Load required sub packages for powerline.")

(use-package solarized-theme
  :init
  (jag--load-solarized-theme-requires)
  (jag--add-solarized-theme-hooks)
  :ensure t
  :config
  (jag--set-solarized-theme-key-bindings)
  (jag--setup-solarized-theme-config))

(provide 'init-solarized-theme)
;;; init-solarized-theme.el ends here