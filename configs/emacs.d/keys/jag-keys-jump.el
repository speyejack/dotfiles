;;; jag-keys-jump.el --- Jump key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The jump key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "j" "jump")

(jag-declare-prefixes
 '(("j" "jump")))

(jag-define-keys jag-jump-map
 "b" 'ibuffer-jump
 "d" 'dired-jump
 "D" 'dired-jump-other-window
 "J" 'evil-avy-goto-char-2
 "j" 'evil-avy-goto-char
 "l" 'evil-avy-goto-line
 "w" 'evil-avy-goto-word-or-subword-1
 "u" 'jag-avy-open-url
 "U" 'jag-avy-goto-url
 "o" 'open-line
 "f" 'helm-imenu-in-all-buffers
 "F" 'helm-semantic-or-imenu
 "k" 'xref-find-definitions
 "K" 'xref-find-references
 "S" 'xref-find-apropos
 "s" 'helm-lsp-workspace-symbol
 "d" 'dumb-jump-go
 "D" 'dumb-jump-back
 "G" 'evil-window-bottom
 "g" 'evil-window-top)

(use-package jag-funcs-jump
  :commands
  (jag-avy-open-url
   jag-avy-goto-url)
  :straight nil)




(provide 'jag-keys-jump)

;;; jag-keys-jump.el ends here
