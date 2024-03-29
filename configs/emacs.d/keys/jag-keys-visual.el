;;; jag-keys-visual.el --- Visual key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The visual key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "v" "visual")

(use-package jag-funcs-visual
  :defer t
  :straight nil
  :commands (jag-stickyfunc-mode
			 jag-whitespace-mode))

(jag-declare-leader-prefixes
 '(("v" "visual")))

(jag-define-keys jag-visual-map
  "'" 'evil-visual-mark-mode
  "a" 'indent-guide-global-mode
  "c" 'centered-cursor-mode
  "C" 'column-number-mode
  "d" 'global-diff-hl-mode
  "f" 'jag-stickyfunc-mode
  "g" 'golden-ratio-mode
  "n" 'highlight-numbers-mode
  "h" 'popwin-mode
  "t" 'hl-todo-mode
  "i" 'imenu-list-smart-toggle
  "m" 'minimap-mode
  "n" 'nlinum-relative-mode
  "r" 'rainbow-delimters-mode
  "R" 'rainbow-mode
  "v" 'volatile-highlights-mode
  "V" 'visual-line-mode
  "w" 'toggle-truncate-lines
  "W" 'toggle-word-wrap
  "l" 'jag-whitespace-mode
  "L" 'whitespace-mode)

(provide 'jag-keys-visual)

;;; jag-keys-visual.el ends here
