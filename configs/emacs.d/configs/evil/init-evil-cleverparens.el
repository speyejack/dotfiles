;;; init-evil-cleverparens.el --- Handles-parentheses-intelligently-with-evil-commands
;;; Commentary:

;;; Code:

(defun jag--set-evil-cleverparens-key-bindings ()
  "Set up keybindings for evil-cleverparens.")

(defun jag--setup-evil-cleverparens-config ()
  "Set up personal configuation for evil-cleverparens."
  (add-hook 'elisp-mode-hook 'evil-cleverparens)
  (add-hook 'lisp-mode-hook 'evil-cleverparens)
  (add-hook 'scheme-mode-hook 'evil-cleverparens)
  (evil-cleverparens-mode 1))

(defun jag--load-evil-cleverparens-requires ()
  "Load required sub packages for evil-cleverparens.")

(use-package evil-cleverparens
  :ensure t
  :config
  (jag--load-evil-cleverparens-requires)
  (jag--set-evil-cleverparens-key-bindings)
  (jag--setup-evil-cleverparens-config))

(provide 'init-evil-cleverparens)
;;; init-evil-cleverparens.el ends here
