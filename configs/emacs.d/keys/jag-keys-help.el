;;; jag-keys-help.el --- Help key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The help key bindings used throughout Emacs

;;; Code:

;; Create the help leader definer
(general-create-definer jag--help-leader-def
  :which-key "help"
  :states '(normal visual)
  :prefix (concat jag-leader-key " h")
  :global-prefix (concat jag-emacs-leader-key " h"))


(use-package jag-funcs-help
  :ensure nil
  :general
  (jag--help-leader-def
   "b" 'helm-descbinds
   "c" 'describe-char
   "e" 'evil-tutor-resume
   "E" 'evil-tutor-start
   "f" 'describe-function
   "k" 'describe-key
   "l" 'jag-describe-last-keys
   "p" 'describe-package
   "s" 'jag-describe-system-info
   "t" 'describe-theme
   "v" 'describe-variable
   "N" 'view-emacs-news))


(provide 'jag-keys-help)

;;; jag-keys-help.el ends here
