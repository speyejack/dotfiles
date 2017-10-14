;;; init-evil.el --- Adds-vim-key-bindings-to-emacs
;;; Commentary:

;;; Code:

(defun jag--add-evil-hooks ()
  "Add hooks to evil."
  (jag--add-evil-key-hooks)
  (jag--add-evil-other-hooks))

(defun jag--add-evil-key-hooks ()
  "Add keyboard hooks to evil.")

(defun jag--add-evil-other-hooks ()
  "Add other hooks to evil.")

(defun jag--set-evil-key-bindings ()
  "Set up keybindings for evil."
  (evil-define-key 'normal global-map (kbd "gh") 'evil-first-non-blank)
  (evil-define-key 'normal global-map (kbd "gl") 'evil-end-of-line)
  (evil-define-key 'normal global-map (kbd "-")  'helm-find-files))

(defun jag--setup-evil-config ()
  "Set up personal configuation for evil."
  (setq evil-magic 'very-magic)
  (evil-mode 1))

(defun jag--load-evil-requires ()
  "Load required sub packages for evil."
  (require 'init-evil-anzu)
  (require 'init-evil-args)
  (require 'init-evil-cleverparens)
  (require 'init-evil-commentary)
  (require 'init-evil-ediff)
  (require 'init-evil-escape)
  (require 'init-evil-exchange)
  (require 'init-evil-iedit-state)
  (require 'init-evil-indent-plus)
  (require 'init-evil-leader)
  (require 'init-evil-lisp-state)
  (require 'init-evil-magit)
  (require 'init-evil-matchit)
  (require 'init-evil-mc)
  (require 'init-evil-nerd-commenter)
  (require 'init-evil-numbers)
  (require 'init-evil-org)
  (require 'init-evil-search-highlight-persist)
  (require 'init-evil-snipe)
  (require 'init-evil-surround)
  (require 'init-evil-terminal-cursor-changer)
  (require 'init-evil-tutor)
  (require 'init-evil-visual-mark-mode)
  (require 'init-evil-visualstar)
  (require 'init-undo-tree))

(use-package evil
  :init
  (jag--load-evil-requires)
  (jag--add-evil-hooks)
  :ensure t
  :config
  (jag--set-evil-key-bindings)
  (jag--setup-evil-config))

(provide 'init-evil)
;;; init-evil.el ends here