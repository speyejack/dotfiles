;;; jag-keys-text.el --- Text key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The text key bindings used throughout Emacs

;;; Code:

;; Create the text leader definer
(general-create-definer jag--text-leader-def
  :which-key "Text leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " t")
  :global-prefix (concat jag-emacs-leader-key " t"))

(jag--text-leader-def
  "e" 'er/expand-region
  "k" 'move-text-up
  "j" 'move-text-down
  "i" '(:wk "string-inflection")
  "ii" 'string-inflection-all-cycle
  "iu" 'string-inflection-underscore
  "iU" 'string-inflection-upcase
  "ik" 'string-inflection-kebab-case
  "it" 'string-inflection-toggle
  "ic" 'string-inflection-lower-camelcase
  "iC" 'string-inflection-camelcase)

(provide 'jag-keys-text)

;;; jag-keys-text.el ends here
