;;; jag-keys-visual.el --- Visual key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The visual key bindings used throughout Emacs

;;; Code:

;; Create the visual leader definer
(general-create-definer jag--visual-leader-def
  :which-key "Visual leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " v")
  :global-prefix (concat jag-emacs-leader-key " v"))

(use-package jag-funcs-visual
  :ensure nil
  :commands (jag-stickyfunc-mode))

(jag--visual-leader-def
  "'" 'evil-visual-mark-mode
  "a" 'indent-guide-global-mode
  "c" 'centered-cursor-mode
  "C" 'column-number-mode
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
  "W" 'visual-line-mode
  "w" 'toggle-truncate-lines
  "l" 'whitespace-mode)

(provide 'jag-keys-visual)

;;; jag-keys-visual.el ends here
