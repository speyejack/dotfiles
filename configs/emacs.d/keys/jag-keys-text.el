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
  "iC" 'string-inflection-camelcase
  "a" '(:wk "align")
  "a&" 'jag-align-repeat-ampersand
  "a\\" 'jag-align-repeat-backslash
  "a|" 'jag-align-repeat-bar
  "a," 'jag-align-repeat-comma
  "a=" 'jag-align-repeat-equal
  "a(" 'jag-align-repeat-left-paren
  "am" 'jag-align-repeat-math-oper
  "a)" 'jag-align-repeat-right-paren
  "a;" 'jag-align-repeat-semicolon
  "a:" 'jag-align-repeat-colon
  "a." 'jag-align-repeat-decimal
  "ar" 'jag-align-repeat
  "ac" 'align-current
  "aa" 'align)

(provide 'jag-keys-text)

;;; jag-keys-text.el ends here
