;;; jag-keys-jump.el --- Jump key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The jump key bindings used throughout Emacs

;;; Code:

;; Create the jump leader definer
(general-create-definer jag--jump-leader-def
  :which-key "jump"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " j")
  :global-prefix (concat jag-emacs-leader-key " j"))


(use-package jag-funcs-jump
  :ensure nil
  :commands (jag-avy-goto-url jag-avy-open-url))

(jag--jump-leader-def
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
  "k" 'dumb-jump-go
  "K" 'dumb-jump-back
  "G" 'evil-window-bottom
  "g" 'evil-window-top)


(provide 'jag-keys-jump)

;;; jag-keys-jump.el ends here
