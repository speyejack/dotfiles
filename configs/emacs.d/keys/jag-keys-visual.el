;;; jag-keys-visual.el --- Visual key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The visual key bindings used throughout Emacs

;;; Code:

;; Create the visual leader definer
(general-create-definer jag--visual-leader-def
  :which-key "Visual leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " v")
  :global-prefix (concat jag-emacs-leader-key " v"))

(jag--visual-leader-def
  "'" 'evil-visual-mark-mode
  "c" 'centered-cursor-mode
  "C" 'column-number-mode
  "g" 'golden-ratio-mode
  "n" 'highlight-numbers-mode
  "t" 'hl-todo-mode
  "i" 'imenu-list-smart-toggle
  "m" 'minimap-mode
  "n" 'nlinum-relative-mode
  "r" 'rainbow-delimters-mode
  "R" 'rainbow-mode
  "v" 'volatile-highlights-mode
  "w" 'visual-line-mode
  "l" 'whitespace-mode)

(provide 'jag-keys-visual)

;;; jag-keys-visual.el ends here
