;;; jag-keys-help.el --- Help key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The help key bindings used throughout Emacs

;;; Code:

;; Create the help leader definer

(jag-create-sub-leader-map jag-leader-map "h" "help")

(jag-declare-leader-prefixes
 '(("h" "help")))

(jag-define-keys jag-help-map
 "b" 'helm-descbinds
 "d" 'evil-lookup
 "h" 'lsp-describe-thing-at-point
 "a" 'helm-apropos
 "y" 'jag-display-and-copy-emacs-version
 "c" 'describe-char
 "e" 'evil-tutor-resume
 "E" 'evil-tutor-start
 "f" 'describe-function
 "F" 'repeat-complex-command
 "k" 'describe-key
 "K" 'jag-describe-keymap
 "l" 'view-lossage
 "L" 'jag-describe-last-keys
 "p" 'describe-package
 "s" 'jag-describe-system-info
 "t" 'describe-theme
 "m" 'describe-mode
 "v" 'describe-variable
 "i" 'info
 "I" 'info-emacs-manual
 "w" 'where-is
 "N" 'view-emacs-news)

(use-package jag-funcs-help
  :commands
  (jag-display-and-copy-emacs-version
   jag-describe-keymap
   jag-describe-last-keys
   jag-describe-system-info)
  :straight nil)


(provide 'jag-keys-help)

;;; jag-keys-help.el ends here
