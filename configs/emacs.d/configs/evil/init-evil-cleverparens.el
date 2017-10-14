;;; init-evil-cleverparens.el --- Handles-parentheses-intelligently-with-evil-commands
;;; Commentary:

;;; Code:

(defun jag--set-evil-cleverparens-key-bindings ()
  "Set up keybindings for evil-cleverparens.")

(defun jag--setup-evil-cleverparens-hooks ()
  "Set up hooks for evil-cleverparens"
  (add-hook 'emacs-lisp-mode-hook 'evil-cleverparens-mode)
  (add-hook 'lisp-mode-hook 'evil-cleverparen-mode)
  (add-hook 'scheme-mode-hook 'evil-cleverparen-mode))

(defun jag--setup-evil-cleverparens-config ()
  "Set up personal configuation for evil-cleverparens.")

(defun jag--load-evil-cleverparens-requires ()
  "Load required sub packages for evil-cleverparens.")

(use-package evil-cleverparens
  :ensure t
  :commands 'evil-cleverparens-mode
  :diminish 'evil-cleverparens-mode
  :init
  (jag--setup-evil-cleverparens-hooks)
  :config
  (jag--load-evil-cleverparens-requires)
  (jag--set-evil-cleverparens-key-bindings)
  (jag--setup-evil-cleverparens-config))

(provide 'init-evil-cleverparens)
;;; init-evil-cleverparens.el ends here
