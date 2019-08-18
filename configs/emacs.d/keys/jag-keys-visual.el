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
  "l" 'whitespace-mode)

(provide 'jag-keys-visual)

;;; jag-keys-visual.el ends here
