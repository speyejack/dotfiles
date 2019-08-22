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

(use-package jag-funcs-text
  :ensure nil
  :general
  (jag--text-leader-def
	"TAB" 'indent-rigidly
	"u" 'downcase-region
	"U" 'upcase-region
	"d" '(:wk "delete")
	"dw" 'delete-trailing-whitespace
	"j" '(:wk "justify")
	"jc" 'set-justification-center
	"jf" 'set-justification-full
	"jl" 'set-justification-left
	"jr" 'set-justification-right
	"jn" 'set-justification-none
	"t" '(:wk "transpose")
	"tc" 'transpose-chars
	"tl" 'transpose-lines
	"tw" 'transpose-words
	"tl" 'transpose-regions
	"w" 'jag-count-words-analysis
	"e" 'er/expand-region
	"c" 'count-words-region
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
	"l" '(:wk "lines")
	"ls" 'jag-sort-lines
	"lS" 'jag-sort-lines-reverse
	"lc" 'jag-sort-lines-by-column
	"lC" 'jag-sort-lines-by-column-reverse
	"lu" 'jag-uniquify-lines
	"ld" 'jag-duplicate-line-or-region
	"lt" 'tabify
	"lT" 'untabify
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
	"aa" 'align))

(provide 'jag-keys-text)

;;; jag-keys-text.el ends here
