;;; jag-keys-text.el --- Text key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The text key bindings used throughout Emacs

;;; Code:

;; Create the text leader definer
(general-create-definer jag--text-leader-def
  :which-key "Text leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " x")
  :global-prefix (concat jag-emacs-leader-key " x"))


(provide 'jag-keys-text)

;;; jag-keys-text.el ends here
